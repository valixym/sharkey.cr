# Sharkey.cr

**Sharkey.cr** is a Crystal library made for interacting with [Sharkey](https://joinsharkey.org/)'s API.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     sharkey:
       github: valixym/sharkey.cr
   ```

2. Run `shards install`

## Usage

Using Sharkey.cr is fairly straightforward. All of the responses from Sharkey's API are formatted in JSON, and can be easily parsed using Crystal's built-in JSON library. I wrote some example code that you can base your project off of.

```crystal
require "sharkey"

resp = Sharkey::Misc.stats("https://kitsunes.club")
x = JSON.parse(resp)

notes_count = x["originalNotesCount"].as_i
users_count = x["originalUsersCount"].as_i

puts "Instance has #{notes_count} total notes, and #{users_count} total users <3"
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/valixym/sharkey/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Vi](https://github.com/valixym) - creator and maintainer
