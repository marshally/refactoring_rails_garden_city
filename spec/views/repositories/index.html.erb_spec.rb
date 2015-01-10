require 'rails_helper'

RSpec.describe "repositories/index", :type => :view do
  before(:each) do
    assign(:repositories, [
      Repository.create!(
        :name => "Name",
        :url => "Url",
        :enabled => false,
        :user_id => 1
      ),
      Repository.create!(
        :name => "Name",
        :url => "Url",
        :enabled => false,
        :user_id => 1
      )
    ])
  end

  it "renders a list of repositories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
