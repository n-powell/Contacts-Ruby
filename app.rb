require 'sinatra'
require 'sinatra/reloader'
require './lib/contacts'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contact/:id') do
  @contact = Contacts.find(params.fetch("id").to_i)
  erb(:contact)
end

get('/contact') do
  @contacts = Contacts.all()
  erb(:contacts)
end

post('/contact') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  job_title = params.fetch('job_title')
  phone_array = params.fetch('phone_number')
  email_array = params.fetch('email')
  contact = Contacts.new(first_name, last_name, job_title, phone_array, email_array)
  @contacts = Contacts.all()
  contact.save()
  erb(:contacts)
end
