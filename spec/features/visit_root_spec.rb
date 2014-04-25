require 'spec_helper'

describe "root page" do
  describe "clicking on the header", js: true do
      it "text should display" do
        visit '/'
        expect(page).to have_content("Hey Macarena")
      end
      it "text should display" do
        visit '/'
        find("h1").click
      end

   end
end
