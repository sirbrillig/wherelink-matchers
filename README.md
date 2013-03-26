# Wherelink::Matchers

Adds link matchers to RSpec for use with Capybara.

## Installation

Add this line to your application's Gemfile:

    gem 'wherelink-matchers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wherelink-matchers

Then in your `spec_helper.rb`, add the following:

    require 'wherelink-matchers'
    #...
    RSpec.configure do |config|
      #...
      config.include(Wherelink::Matchers)
    end

## Usage

Sometimes you need to search a page for a link HREF, regardless of the content
of the link (if the content is an image, for example). 

This gem includes the `have_link_to` matcher to save you some time. Now you can
do something like this inside a spec file:

    describe "my page" do
      before { visit "/my_page" }

      it "has a link to the home page" do
        page.should have_link_to root_url
      end
    end

Using this gem requires Capybara and RSpec.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
