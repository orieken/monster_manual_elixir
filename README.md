# MonstersManual

Web service in elixir and phoenix for the d&d 5e monster manual I don't own any of the data it all came from the book. 

[ ![Codeship Status for orieken/monster_manual_elixir](https://codeship.com/projects/85c445d0-60de-0134-ff4f-42a7766b52c3/status?branch=master)](https://codeship.com/projects/174674) Deployed here: 


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
    
### Deployment

* ClearDB only has 10 available connections so limit the app to 8 in: ` pool_size: String.to_integer(System.get_env("POOL_SIZE") || "8"), `
* to run migrations on heroku ` heroku run "POOL_SIZE=1 MIX_ENV=prod  mix ecto.migrate" `