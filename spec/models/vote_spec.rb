require 'rails_helper'

describe Vote do 
	def valid?
		(@vote == 1) || (@vote == -1)
	end
end

describe "validations" do
	let (:good_v) {Vote.new(value: 1)}
	let (:bad_v) {Vote.new(value: -1)}
  
  describe "value validation" do
      it "only allows -1 or 1 as values" do
        expect(good_v.valid?).to eq(true)
        expect(bad_v.valid?).to eq(true)
      end
    end
  end

# describe Post do 
#   describe "vote methods" do
# 	describe '#up_votes' do
# 	  it "counts the number of votes with value = 1" do
# 		expect( @post.up_votes ).to eq(3)
		