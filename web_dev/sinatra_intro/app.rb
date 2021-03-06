# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

##############################################

# /contact route that displays an address
get '/contact' do
  '<a href="mailto:joe@shmoe.com">joe@shmoe.com</a>'
end


# /great_job route 
#   takes person's name as query parameter
#   say "good job [name]"
get '/great_job' do
  name = params[:name]

  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# route that adds 2 route params and respond with result
get '/:num1/plus/:num2' do
  int1 = params[:num1].to_i
  int2 = params[:num2].to_i
  result = int1 + int2

  "#{int1} + #{int2} = #{result}"
end

# optional bonus:
# route that allows user to search database in some way










