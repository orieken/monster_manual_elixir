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
  
 * Generate model ` mix phoenix.gen.model Monster monsters name size alignment ac:integer `
 
### Testing

  * Run unit tests:  ` mix test ` when i do this i get an error because of the shared db connection. have not figured out why so I split it into the next two commands
    * Run View and Model tests: ` mix test test/views test/models/ `
    * Run Integration Tests: ` mix test test/integration/ `