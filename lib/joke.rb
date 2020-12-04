require_relative 'list'

module Connect
  module Commands
    # Say Joke Class
    class SayJoke < SlackRubyBot::Commands::Base
      list = JokeList.new
      match(/joke/) do |client, data, _match|
        client.say(channel: data.channel, text: list.select_joke(data.text))
      end
    end
  end
end
