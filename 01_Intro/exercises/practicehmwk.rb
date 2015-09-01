require 'pry'
require 'rest-client'
require 'json'

def connect_to_api(url, api_provider)
  response = RestClient.get(url)
  JSON.parse(response)
  find_stories(response, api_provider)
end


reddit_url = "http://www.reddit.com/.json"
mashable_url = "http://mashable.com/stories.json"
response = connect_to_api(mashable)
