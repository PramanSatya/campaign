### Local Setup

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

NOTE - **There is a validation on the presence of name and email of user, make sure to give these values before hitting POST api**

And now you can visit the site with the URL http://localhost:3000


### EC2 Access

**NOTE - Please let me know before accessing the url since the instance and elastic IP is paid, so I need to start the instance before hand.**

IP Address - 52.66.48.182

#### Get all users:
Web URL - http://52.66.48.182/users
cURL:
```
curl --location 'http://52.66.48.182/users' \
--header 'accept: application/json'
```

#### Create user:
cURL:
```
curl --location 'http://52.66.48.182/users' \
--header 'accept: application/json' \
--header 'Content-Type: application/json' \
--data-raw '{
  "name": "abc",
  "email": "abc@gmail.com",
  "campaigns_list": [{"campaign_name": "cam10", "campaign_id": "id10"}, {"campaign_name": "cam11", "campaign_id": "id11"}]
}
'
```

#### Filter user:
Web URL - http://52.66.48.182/users/filter?campaign_names=cam10
cURL:
```
curl --location 'http://52.66.48.182/users/filter?campaign_names=cam10' \
--header 'accept: application/json'
```
