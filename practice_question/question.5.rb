# create the database class
class UserDatabase
  def initialize
    @database = {}
  end

  def add_user(username, email)
    @database[username] = {
      'Email' => email
    }
    puts "User '#{username}' added successfully."
  end

  def retrieve(username)
    return 'Database is empty' if @database.empty?
    return 'Invalid user' unless @database.key?(username)

    "User details: #{@database[username]}"
  end

  def delete_user(username)
    return 'Database is empty' if @database.empty?
    return 'Invalid user' unless @database.key?(username)

    @database.delete(username)
    'User deleted successfully.'
  end
end

database = UserDatabase.new
loop do
  puts 'Please enter your choice:'
  puts '1. Add User'
  puts '2. Retrieve User'
  puts '3. Delete User'
  puts '4. Exit'

  choice = gets.chomp.to_i

  case choice
  when 1
    print 'Enter username:'
    username = gets.chomp
    print 'Enter email: '
    email = gets.chomp
    database.add_user(username, email)

  when 2
    print 'Enter username to retrieve:'
    username = gets.chomp
    puts database.retrieve(username)

  when 3
    print 'Enter username to delete:'
    username = gets.chomp
    puts database.delete_user(username)

  when 4
    puts 'Exiting the database. Goodbye!'
    break

  else
    puts 'Invalid choice. Please enter a number between 1 and 4.'
  end
end
