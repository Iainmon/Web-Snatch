# snatch

A simple CLI for downloading entire websites.

## Installation

- Requires wget and crystal-lang.
- Install dependencies if you don't already have them installed:
```shell
brew update
brew install wget
brew install crystal
```

- Install snatch:
```shell
git clone https://github.com/Iainmon/Web-Snatch.git
cd Web-Snatch
shards install
crystal build src/snatch.cr --no-debug --release
sudo cp snatch /usr/local/bin
```


## Usage

```shell
$ snatch
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/iainmon/snatch/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Iain Moncrief](https://github.com/your-github-user) - creator and maintainer
