require 'rails_helper'

RSpec.describe User, type: :model do
	subject { User.new(name: "abc", email: "abc@gmail.com", campaigns_list: [{"campaign_name": "cam10", "campaign_id": "id10"}] ) }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without name" do
    subject.name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without email" do
    subject.email=nil
    expect(subject).to_not be_valid
  end
end
