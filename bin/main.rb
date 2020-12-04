require 'slack-ruby-bot'
require_relative '../lib/joke'

module Connect
  # Bot Class
  class Bot < SlackRubyBot::Bot
    help do
      title 'Connect Bot'
      desc 'Connect to a world of no stress.'

      command :any_joke do
        title 'random joke.'
        desc "Get a random joke typing any sentence containing the word 'joke'"
      end
      command :misc_joke do
        title 'misc joke.'
        desc "Get a Miscellaneaous joke typing any sentence containing the words 'joke' and 'misc'"
      end
      command :dev_joke do
        title 'developer/programming joke.'
        desc "Get a Programming joke typing any sentence containing the words 'joke' and 'developer' or 'programming'"
      end
      command :yomama_joke do
        title 'yo mama/yo momma joke.'
        desc "Get a Yo Mama joke typing any sentence containing the words 'joke' and 'yo mama' or 'yo momma'"
      end
      command :chuck_joke do
        title 'chuck joke.'
        desc "Get a Chuck Norris joke typing any sentence containing the words 'joke' and 'chuck'"
      end
      command :dad_joke do
        title 'dad joke.'
        desc "Get a dad joke typing any sentence containing the words 'joke' and 'dad'"
      end
    end
  end
end
