require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('blog')

# Perform a SQL query on the database and get the result set.
sql = 'SELECT id, title, content, comment_id FROM posts WHERE comment_id = 3;'
result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .
result.each do |record|
  p record
end

sql = 'SELECT id, content, commenter FROM comments WHERE id = 3;'
result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .
result.each do |record|
  p record
end