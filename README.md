##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby - 3.2.2
- Rails - 7.1.3.4
- mysql

##### 1. Check out the repository

```bash
git clone git@github.com:PramanSatya/campaign.git
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000
