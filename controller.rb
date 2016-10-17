require 'sinatra'
require 'sinatra/contrib/all'
require 'json'
require 'pry-byebug'
require_relative './models/wordformatter.rb'
require_relative './models/address.rb'

get '/' do
  erb(:home)
end

get '/address' do
  content_type(:json)
  new_address = Address.new()
  word_formatting = WordFormatter.new()
  results = {
    address: new_address.address,
    building: new_address.building,
    postcode: word_formatting.format_postcode(),
    phone: new_address.phone
  }
  return results.to_json
end