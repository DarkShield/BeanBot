# BeanBot

The Docker container contains both Hubot as well as Redis.

## Deploying

* Run `docker build -t BeanBot .`

## Running

    docker run -e HUBOT_HIPCHAT_JID=jid \
      -e HUBOT_HIPCHAT_PASSWORD=secret \
      -e HUBOT_AUTH_ADMIN=admin \
      -d -p 80:80 BeanBot

## Resources

The [hipchat-hubot](https://github.com/hipchat/hubot-hipchat) is a good place
to start as it describes how to setup both Hipchat and Hubot.

Hubot docs can be found in the [hubot repo](https://github.com/github/hubot).
