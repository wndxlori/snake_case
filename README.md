# snake_case

[![Gem Version](https://badge.fury.io/rb/snake_case.png)](http://badge.fury.io/rb/snake_case) [![Build Status](https://travis-ci.org/FluffyJack/snake_case.png)](https://travis-ci.org/FluffyJack/snake_case) [![Code Climate](https://codeclimate.com/github/FluffyJack/snake_case.png)](https://codeclimate.com/github/FluffyJack/snake_case) [![Dependency Status](https://gemnasium.com/FluffyJack/snake_case.png)](https://gemnasium.com/FluffyJack/snake_case)

For RubyMotion developers who are a fan of snake_case. Converting to snake_case, one API at a time. Slowly converting any API I use to snake_case or to a more idiomatic way of doing it. Lots of monkey patching, because RUBY!

![snake_case_all_the_things](http://i.imgur.com/uNxIfp0.jpg)

## Help support this gem by learning

The only reason I can keep making gems and keep them up to date is because lovely people like yourself support me. I run the [MotionInMotion screencasts](https://motioninmotion.tv/) which you can sign up to for $9/month, I also have a book coming out called [RubyMotion for Rails Developers](http://book.motioninmotion.tv/) which you can pay what you like to buy, and I provide one-on-one training through pairing on [AirPair{}Me](http://airpair.me/fluffyjack?utm_source=expert&utm_medium=readme&utm_term=snake_case&utm_content=github&utm_campaign=airpairme). All support, even small amounts really helps.

## Installation

Add this line to your application's Gemfile:

    gem 'snake_case'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snake_case

## Usage

This is just a reference for each class I've added methods to. Good to check out the actual source code and specs.

### UIView

```ruby
# Creating and configuring views
view = UIView.create
view = UIView.create do |v|
  v.frame = [[10, 10], [10, 10]]
end

# Adding subviews
view << UIView.new

# Frame related helpers

# top / y
view.top                            # 10
view.top = 20
view.top                            # 20
view.frame.origin.y                 # 20

# left / x
view.left                           # 10
view.left = 20
view.left                           # 20
view.frame.origin.x                 # 20

# bottom / y
view.bottom                         # 20 (y + height)
view.bottom = 30
view.top                            # 20
view.bottom                         # 30

# right / x
view.right                          # 20 (x + width)
view.right = 30
view.left                           # 20
view.right                          # 30

# width
view.width                          # 10
view.width = 20     
view.width                          # 20

# height
view.height                         # 10
view.height = 20     
view.height                         # 20

# layer properties
view.corner_radius = 5
view.corner_radius                  # 5
view.layer.cornerRadius             # 5

view.border_radius = 10
view.border_radius                  # 10
view.corner_radius                  # 10
view.layer.cornerRadius             # 10

view.border_width = 15
view.border_width                   # 15
view.layer.borderWidth              # 15

view.border_color = UIColor.greenColor
view.border_color                   # UIColor.greenColor.CGColor
view.layer.borderColor              # UIColor.greenColor.CGColor

# aliases
view.size_to_fit                    # view.sizeToFit
view.redisplay                      # view.setNeedsDisplay
view.set_needs_display              # view.setNeedsDisplay
view.background_color               # view.backgroundColor
view.background_color=              # view.backgroundColor=
```

## Contributing

1. Fork it ( http://github.com/FluffyJack/snake_case/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
