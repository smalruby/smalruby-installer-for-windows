# smalrubot

The smalrubot is a library and an Arduino sketch for Smalruby.

This is a part of the Smalruby ([http://smalruby.jp](http://smalruby.jp)) Project.

This was forked from Dino ([austinbv/dino:15cd48e8](https://github.com/austinbv/dino/tree/15cd48e849faeb08c7dc017ff39ff16ff2e165a3)).

## Installation

requirements:

 * Windows or UNIX like OS (Mac OS X, Linux, etc...)
 * Ruby 2.0.0-p481 or higher.

Add this line to your application's Gemfile:

```ruby
gem 'smalrubot'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install smalrubot
```

## Usage

### Prepare the Bootstrapper

Use the included command line tool to create a folder with the Arduino sketch you want to use and optionally configure it.

```shell
# If using Smalrubot V3, this is all you should need:
smalrubot generate-sketch sr

# If using Smalrubot S1 (a.k.a Studuino), this is all you should need:
smalrubot generate-sketch sr_studu
```

### Upload The Bootstrapper

* Connect the Arduino to a USB port on your machine, regardless of which sketch you're using.
* Open [the normal Arduino IDE](http://arduino.cc/en/Main/Software)
* Open the `.ino` file in the sketch folder you just generated.
* Click the upload button (an arrow).

## Contributing

1. Fork it ( https://github.com/smalruby/smalrubot/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

MIT (see [LICENSE](link:LICENSE))
