# MonstersManual

Web service in elixir and phoenix for the d&d 5e monster manual I don't own any of the data it all came from the book. 


## Phoenix 

To start your [Phoenix](http://www.phoenixframework.org/) app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix


## Commands

  * Generate new api with mysql db ` mix phoenix.new monsters_manual --no-html --no-brunch --database mysql `
  * Run Tests verbose ` mix test test/integration/listing_monsters_test.exs --color --trace `
  
 * Generate model ` mix phoenix.gen.model Monster monsters name size alignment ac:integer `