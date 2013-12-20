require 'spec_helper'

describe KoolHint do
  before(:each) do
    expect(FactoryGirl.build(:kool_hint)).to be_valid
  end

  it "is invalid without a name" do
    hint = FactoryGirl.build(:kool_hint, name: nil)
    expect(hint).to have(1).errors_on(:name)
    expect(hint.errors).to be_added :name, :blank
  end

  it "must have a unique name" do
    FactoryGirl.create(:kool_hint, name: "not_unique")
    hint = FactoryGirl.build(:kool_hint, name: "not_unique")
    expect(hint).to have(1).errors_on(:name)
    expect(hint.errors).to be_added :name, :taken
  end

  it "is invalid without some contents" do
    hint = FactoryGirl.build(:kool_hint, content: nil)
    expect(hint).to have(1).errors_on(:content)
    expect(hint.errors).to be_added :content, :blank
  end
end