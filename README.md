# OutdatedBrowser

Detect outdated browsers and Javascript disabled.

![alt tag](https://github.com/sergiojadir/outdated_browser/blob/develop/app/assets/images/outdated_browser/first.png)
![alt tag](https://github.com/sergiojadir/outdated_browser/blob/develop/app/assets/images/outdated_browser/step-by-step.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'outdated_browser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install outdated_browser

## Usage

```ruby
#app/views/layouts/application.html.erb
<body>
	<%= render partial: "outdated_browser/outdated_browser" %>
</body>
```

### I18n
* Avaliable only in Portuguese.

Add English translation:

```yaml
	#config/locales/outdated_browser.en.yml
	en:
	  outdated_browser:
	    browser_is_up_to_date: 'translate here'
	    how_to_enable_javascript_in_your_browser: 'translate here'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/outdated_browser.

