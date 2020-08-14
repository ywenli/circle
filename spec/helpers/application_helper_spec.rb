require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

  describe "#full_title" do
    context "page_title is empty" do
      it "returns base_title" do
        expect(helper.full_title).to eq('Circle')
      end
    end
    context "page_title is not empty" do
      it "returns title and base_title" do
        expect(helper.full_title('hoge')).to eq('hoge | Circle')
      end
    end
  end
end