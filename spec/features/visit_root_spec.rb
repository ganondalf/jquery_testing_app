require 'spec_helper'

describe "root page" do
  describe "clicking on the header", js: true do
      it "changes text when you click on it" do
        visit '/'
        page.find("h1", :text => "Hey Macarena").click
        expect(page).to have_content "ANERACAM YEH";
      end
   end
end
