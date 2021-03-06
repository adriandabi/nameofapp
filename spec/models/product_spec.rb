require 'rails_helper'

describe Product do
  let(:product) {Product.create!(name:'racebike')}
  let(:user) {User.create!(first_name:"Adrian")}
end
before do
  product.comments.create!(rating: 1, user: user, body: "Awful bike!")
  product.comments.create!(rating: 3, user: user, body: "Ok bike!")
  product.comments.create!(rating: 5, user: user, body: "Great bike!")
end

it "returns the average rating of all comments" do
  expect(product.average_rating).to eq 3
  expect (Product.new(description:'nice bike')).not_tp be_valid

end
