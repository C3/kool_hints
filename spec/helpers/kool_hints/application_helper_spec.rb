require 'spec_helper'

describe KoolHints::ApplicationHelper do
  before :each do
    FactoryGirl.create(:kool_hint)
  end

  it "returns some hint HTML if given a valid name" do
    expect(helper.koolhint(:cat_brushing)).to include("Be careful to brush your cat gently as they have thin and sensitive skin")
  end

  it "returns nil if given an invalid name" do
    expect(helper.koolhint(:cat_petting)).to eq(nil)
  end
end