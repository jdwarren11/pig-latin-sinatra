require 'sinatra'
require 'pig_latin'
# require 'pry-byebugg'


set :bind, '0.0.0.0'

get '/gather-words' do
  erb :translate
end

post '/translation' do
  puts params
  @words = PigLatin.translate(params[:words])
  erb :result
end
