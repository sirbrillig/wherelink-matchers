require "wherelink-matchers/version"
require "capybara"
require "capybara/rspec/matchers"

module Wherelink
  module Matchers
    
    def have_link_to(href)
      LinkToMatcher.new(href)
    end

    class LinkToMatcher
      def initialize(href)
        @href = href
      end

      def matches?(actual)
        Capybara::RSpecMatchers::HaveSelector.new(:link, '', {href: @href}).matches?(actual)
      rescue Capybara::ExpectationNotMet
        return false
      end

      def description
        "have link to \"#{@href}\""
      end

      def failure_message_for_should
        "expected to find a link to \"#{@href}\""
      end

      def failure_message_for_should_not
        "expected not to find a link to \"#{@href}\""
      end
    end

  end
end
