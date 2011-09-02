Campfire Bot
==
A super simple campfire bot.

Deploy to Heroku (and run, for free!)
==
Heroku provide a single 'dyno' per month, for free. This bot only needs one dyno, called 'bot' (see Procfile)

1. Fork or clone this repo
2. `bundle install` get the gems
3. Create `campfire.yml` with a Campfire user's credentials (use campfire.yml.example as a reference)
4. Sign up to http://www.heroku.com/ and `gem install heroku` to get the heroku management command line funk
5. Create your app on Heroku's Cedar platform `heroku create --stack cedar your-bot-app-name`
6. `git push heroku master` deploy to heroku
7. assuming all went well, you now need to `heroku ps:scale bot=1` to 'scale' your bot dyno (start it!). He should appear in your Campfire room!
8. Give your bot some cheek in bot.rb, commit, and push (step 6)
