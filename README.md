# JekyllPdatePlugin

So you want to have `persian date` in your jekyll blog/site ? This plugin provide `pdate_to_string` filter for `Liquid`. 

Special thanks to [@hzamani](https://github.com/hzamani) for [Parsi Date](https://github.com/hzamani/parsi-date) gem.

[![ohloh.com](https://www.ohloh.net/accounts/322550/widgets/account_detailed.gif)](https://www.ohloh.net/accounts/322550?ref=Detailed)

## Installation

Add this line to your application's Gemfile:

    gem 'jekyll_pdate_plugin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll_pdate_plugin

## Usage

Use `pdate_to_string` filter instead of `date_to_string` filter.

Example: `/path/to/_layouts/post.html`

    ---
    layout: default
    ---
    <h2>{{ page.title }}</h2>
    <p class="meta">{{ page.date | pdate_to_string }}</p>

    <div class="post">
        {{ content }}
    </div>

### Override default format

Default filter output format is `%A %d %B %Y`. To change this format add following configuration to your `_config.yml`

    ...
    pdate_filter: "FORMAT"

[Available formats](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html#method-i-strftime)
## Contributing

1. Fork it ( http://github.com/intuxicated/jekyll_pdate_plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
