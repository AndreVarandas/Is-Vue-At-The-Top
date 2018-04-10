require 'sinatra'
require 'sinatra/reloader'
require 'net/http'
require 'json'
require 'sass'

require_relative 'models/Repository'

get '/' do
    @analytics = ENV['ANALYTICS']
    vue_url = 'https://api.github.com/repos/vuejs/vue';
    react_url = 'https://api.github.com/repos/facebook/react';
    vue = getRepositoryData(vue_url)
    react = getRepositoryData(react_url)
    erb :home, :locals => { :vue => vue, :react => react }
end

# Handle unrecognized pages (404)
not_found do
    @analytics = ENV['ANALYTICS']
    status 404
    erb :not_found
end

def getRepositoryData(url)
    uri = URI(url)
    uri.query = URI.encode_www_form(access_token: ENV['TOKEN'])
    response = JSON.parse(Net::HTTP.get_response(uri).body)

    repository = Repository.new(
        response['stargazers_count'],
        response['subscribers_count'],
        response['forks_count']
        )
    return repository
end
