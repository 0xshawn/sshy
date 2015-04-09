# SSHY

_version 0.0.4_

Sshy help you connect to your ssh server without remember every name of it. It only works on Mac OS X.

## Prepare
1. Install iTerm2
2. Change URL Schemes.

  	Open iTerm2's Preference and click <b>_Profile_</b> tab and then click <b>_General_</b> subtab. Click <b>_Select URL Schemes_</b> and select ssh.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sshy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sshy

## Usage

```
$ sshy
server01    server02    server03    server04
server05
```
And now you could select one and press `Enter` to ssh it

## TODO
1. show details when press TAB
2. return error message when ssh failed
3. auto detect whether os support ssh:// or not

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sshy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
