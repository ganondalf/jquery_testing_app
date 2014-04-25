require 'spec_helper'

describe "root page" do
  describe "clicking on the header", js: true do
      it "text should display the text in the header backwards" do
        visit '/'
        expect(page).to have_content("Hey Macarena")
      end
   end
end
