require 'comment_repository'

RSpec.describe CommentRepository do
    it "returns all the comments" do
        repo = CommentRepository.new
        result = repo.all
        expect(result.length).to eq 5
    end
    it "returns a comment by the given name" do
        repo = CommentRepository.new
        expect(repo.find('Dogancan Emek')).to eq ["The greatest place to have a summer!"]
    end
end