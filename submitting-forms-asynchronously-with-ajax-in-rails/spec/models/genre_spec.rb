require 'rails_helper'

RSpec.describe Genre, type: :model do
  it { should have_many(:videos) }
  it { should validate_presence_of(:name) }
  # it { should validate_uniqueness_of(:name) }

  it "validates uniqueness of" do
    FactoryGirl.create(:genre)
     should validate_uniqueness_of(:name)
  end
end
