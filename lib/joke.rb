module Connect
  module Commands
    # Say Joke Class
    class SayJoke < SlackRubyBot::Commands::Base
      jokes = ['My wife told me to stop impersonating a flamingo. I had to put my foot down. ',
               'I went to buy some camo pants but couldn’t find any.',
               'I failed math so many times at school, I can’t even count.',
               'I used to have a handle on life, but then it broke.',
               'I was wondering why the frisbee kept getting bigger and bigger, but then it hit me.',
               'I heard there were a bunch of break-ins over at the car park. That is wrong on so many levels.',
               'When life gives you melons, you might be dyslexic.',
               'Don’t you hate it when someone answers their own questions? I do.',
               'It takes a lot of balls to golf the way I do.',
               'I told him to be himself; that was pretty mean, I guess. ',
               'I know they say that money talks, but all mine says is ‘Goodbye.’',
               'My father has schizophrenia, but he’s good people.',
               'The problem with kleptomaniacs is that they always take things literally.',
               'I can’t believe I got fired from the calendar factory. All I did was take a day off.',
               'Most people are shocked when they find out how bad I am as an electrician.',
               'Never trust atoms; they make up everything.',
               'My wife just found out I replaced our bed with a trampoline. She hit the ceiling! ',
               'I was addicted to the hokey pokey, but then I turned myself around.',
               'I used to think I was indecisive. But now I’m not so sure.',
               'Russian dolls are so full of themselves.',
               'The easiest time to add insult to injury is when you’re signing someone’s cast.',
               'My therapist says I have a preoccupation for revenge. We’ll see about that.',
               'A termite walks into the bar and asks, ‘Is the bar tender here?’',
               'A told my girlfriend she drew her eyebrows too high. She seemed surprised.',
               'People who use selfie sticks really need to have a good, long look at themselves. ',
               'Two fish are in a tank. One says, ‘How do you drive this thing?’',
               'I always take life with a grain of salt. And a slice of lemon. And a shot of tequila.',
               'Just burned 2,000 calories. That’s the last time I leave brownies in the oven while I nap.']
      match /joke/ do |client, data, _match|
        client.say(channel: data.channel, text: jokes.sample)
      end
    end
  end
end
