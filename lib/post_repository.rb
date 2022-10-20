require 'post'

class PostRepository

    def all
        posts = []

        sql = 'SELECT id, title, content, comment_id FROM posts;'

        result_set = DatabaseConnection.exec_params(sql, [])
        result_set.each do |record|
            post = Post.new
            post.id = record['id']
            post.title = record['title']
            post.content = record['content']
            post.comment_id = record['comment_id']

            posts << post

        end

        return posts

    end

    def find(city)
        posts = []

        sql = 'SELECT id, title, content, comment_id FROM posts WHERE title = $1;'

        params = [city]

        result_set = DatabaseConnection.exec_params(sql, params)
        result_set.each do |record|
            post = Post.new
            post.id = record['id']
            post.title = record['title']
            post.content = record['content']
            post.comment_id = record['comment_id']

            posts << post

        end

        return posts.map { |post| post.content }
    end

end