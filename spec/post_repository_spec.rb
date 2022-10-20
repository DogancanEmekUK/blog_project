require 'post_repository'

RSpec.describe PostRepository do
    it "returns all the posts" do
        repo = PostRepository.new
        result = repo.all
        expect(result.length).to eq 5
    end
    it "finds a post by its id" do
        repo = PostRepository.new
        result = repo.find('Izmir')
        expect(result).to eq ['Beaches and coves in Izmir']
    end
end