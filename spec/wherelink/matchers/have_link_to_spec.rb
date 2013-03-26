require 'spec_helper'

describe Wherelink::Matchers::LinkToMatcher do
  describe "have_link_to matcher" do
    let(:html) { '<a href="/foo/bar">Just a link</a>' }

    it "gives proper description" do
      have_link_to('/foo/bar').description.should == "have link to \"/foo/bar\""
    end

    it "passes if there is such a link" do
      html.should have_link_to('/foo/bar')
    end

    it "fails if there is no such link" do
      expect do
        html.should have_link_to('/bar/foo')
      end.to raise_error(/expected to find a link to "\/bar\/foo"/)
    end
  end
end
