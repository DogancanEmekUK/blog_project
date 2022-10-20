require 'comment'

class CommentRepository
    
    def all
        comments = []

        sql = 'SELECT id, content, commenter FROM comments;'

        result_set = DatabaseConnection.exec_params(sql, [])

        result_set.each do |record|
            comment = Comment.new
            comment.id = record['id']
            comment.content = record['content']
            comment.commenter = record['commenter']

            comments << comment

        end

        return comments

    end

    def find(commenter)
        comments = []

        sql = 'SELECT id, content, commenter FROM comments WHERE commenter = $1;'

        params = [commenter]

        result_set = DatabaseConnection.exec_params(sql, params)

        result_set.each do |record|
            comment = Comment.new
            comment.id = record['id']
            comment.content = record['content']
            comment.commenter = record['commenter']

            comments << comment

        end

        return comments.map { |comment| comment.content }
    end

end