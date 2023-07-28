require 'rails_helper'
RSpec.describe Comment, type: :model do
  describe 'validation' do
    it { should validate_presence_of(:commenter) }
  end

  describe 'associate' do
    it {should belong_to(:article).class_name('Article')}
  end
end