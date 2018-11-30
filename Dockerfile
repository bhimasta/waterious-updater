FROM waterious/ruby-http:2.4.3

WORKDIR /worker

COPY / .

RUN bundle install

CMD rake worker

# LOCAL:
# Build local image with:
#   rake docker:build
# or:
#   docker build --rm --force-rm -t waterious/waterious-update:0.1.0 .
#
# Run and test local container with:
#   rake docker:run
# or:
#   docker run -e --rm -it -v $(pwd)/config:/worker/config -w /worker waterious/waterious-update:0.1.0 ruby application/update_notifier.rb

# REMOTE:
# Make sure Heroku app exists:
#   heroku create waterious-scheduled_worker
#
# Build and push to Heroku container registry with:
#   heroku container:push web
# (if first time, add scheduler addon to Heroku and have it run 'worker')
#
# Run and test remote container:
#   heroku run worker
# or:
#   heroku run ruby worker/update_notifier.rb
