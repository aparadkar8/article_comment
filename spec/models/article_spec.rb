require 'rails_helper'
require 'faker'
RSpec.describe Article, type: :model do
  let(:comment1) { build(:comment) }
  # let(:article){
  #   Article.create(
  #     title: "TEsts"
  #   )
  # }
  context " #" do
    it "will create articles" do
      for a in 1..5 do
        article = Article.create(:title => Faker::Name.name , :body => Faker::Alphanumeric.alpha(number: 10))
      end

      # puts article.inspect
      expect(Article.count).to eq(5)
    end

    it "will delete extra articles" do
      # debugger
      article_1  = Article.create(:title => "Ruby", :body => "Ruby is popular")
      article_2  = Article.create(:title => "Rails", :body => "Rails framework is")
      article_3 = Article.create(:title => "Amazon", :body => "Largest cloud service")
      article_3  = Article.find_by(title: "Ruby").destroy
      expect(Article.all.count).to eq(2)  
    end

    it "will update article" do
      article_1  = Article.create(:title => "Ruby", :body => "Ruby is popular")
      article_2  = Article.create(:title => "Rails", :body => "Rails framework is good")
      # puts Article.last.inspect
      # debugger
      # expect(Article.all.count).to eq(2)
      # expect {Article.last.update!(title:"Pyt")}.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Title is too short (minimum is 4 characters)")
      # expect(Article.last.body).to start_with("Rails")
      # expect(Article.count).to be >=2
      # expect(Article.all).not_to be_empty
      # expect(Article.count).to be_a_kind_of(Integer)
      expect([1,2,3,4]).to include(2)

      # expect {  }
    end
    # Article.destroy_all
  end
  context "comments" do
    it "will create comments" do
      comment1.save
      article1 = Article.create(:title => "Ruby", :body => "Ruby is popular")
      for i in 0..4 do
        cmt = Comment.create(:commenter => Faker::Name.name, :body => Faker::Alphanumeric.alpha(number: 15))
        article1.comments << cmt
      end
      
      # debugger
      # expect(article1.comments.last).to eq(cmt)
    end

  end
end
