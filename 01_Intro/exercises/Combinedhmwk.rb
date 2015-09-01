
require 'pry'  #debugging tool
require 'rest-client' #library that faciltates http requests
require 'json' #tranforms a string response into 'json'
require 'csv'

def connect_to_api(url, which_is_it)
  response = RestClient.get(url)
  json_response = JSON.parse(response)
  find_stories(json_response, which_is_it)
end

def find_stories(response, which_is_it)
  case which_is_it
  when "reddit"
    find_reddit_stories(response, which_is_it)
  when "mashable"
    find_mashable_stories(response, which_is_it)
  else
    puts "Not a valid answer"
  end
end

def find_reddit_stories(response, which_is_it)
  stories = response["data"]["children"]
  puts "Reddit has blessed us with #{stories.count} stories"
  print_stories(stories, which_is_it)
end

def find_mashable_stories(response, which_is_it)
  stories = response["hot"]
  puts "Mashable has blessed us with #{stories.count} hot stories"
  stories_array = print_stories(stories, which_is_it)

  create_csv(stories_array, which_is_it)
  return print_stories(stories, which_is_it)
end

def print_stories(stories, which_is_it)
  return stories.map do |story|
     story = create_story_hash(story, which_is_it)
     #puts "Title: #{story[:title]}. Category: #{story[:category]}. Upvotes: #{story[:upvotes]}. API Source: #{story[:provider]}."
  end
end

def create_csv(stories, which_is_it)
  CSV.open("./file.csv", "wb") do |csv|
    csv << ["title", "category", "upvotes", "provider"]

    stories.each do |story|
        story = create_story_hash(story, which_is_it)
       csv <<["Title: #{story[:title]}",  "Category: #{story[:category]}", "Upvotes: #{story[:upvotes]}."]
    end
  end
end

def create_story_hash(story, which_is_it)
  if which_is_it == "reddit"
   story =  {title: story["data"]["title"], upvotes: story["data"]["ups"],  category: story["data"]["subreddit"], provider: which_is_it}
  elsif which_is_it == "mashable"
   story = {title: story["title"], upvotes: story["shares"]["total"],  category: story["channel"], provider: which_is_it}
  else
    puts "No hash created"
  end
end

reddit_url = "http://www.reddit.com/.json"
mashable_url =  "http://mashable.com/stories.json"

connect_to_api(reddit_url, "reddit")
connect_to_api(mashable_url, "mashable")
