# mailgun-sinatra

A simple Sinatra wrapper for the mailgun email service. 

You'll need an API key for mailgun, and a domain. These can be retrieved from your account settings after signing up to [mailgun](https://signup.mailgun.com/). Export these as environment variables:
```
export APIKEY=d3e4c5a6-b7bf-4f40-8074-1ba981f52568
export DOMAIN=sandbox-2a6ceb6beda5.mailgun.org
```

You can run the app with rackup:
```
bundle install
bundle exec rackup -p 9393 --host 0.0.0.0
```
