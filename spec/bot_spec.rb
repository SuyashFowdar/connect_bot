require_relative '../bin/main'

describe SlackRubyBot::Commands do
  it 'Checks if joke is sent upon requesting' do
    expect(message: "#{SlackRubyBot.config.user} joke").to respond_with_slack_message
  end
end

describe SlackRubyBot::Commands do
  it 'Checks if joke is sent upon requesting' do
    expect(message: "#{SlackRubyBot.config.user} chuck joke").to respond_with_slack_message
  end
end

describe SlackRubyBot::Commands do
  it 'Checks if joke is sent upon requesting' do
    expect(message: "#{SlackRubyBot.config.user} dad joke").to respond_with_slack_message
  end
end

describe SlackRubyBot::Commands do
  it 'Checks if joke is sent upon requesting' do
    expect(message: "#{SlackRubyBot.config.user} programming joke").to respond_with_slack_message
  end
end

describe SlackRubyBot::Commands do
  it 'Checks if joke is sent upon requesting' do
    expect(message: "#{SlackRubyBot.config.user} misc joke").to respond_with_slack_message
  end
end

describe SlackRubyBot::Commands do
  it 'Checks if joke is sent upon requesting' do
    expect(message: "#{SlackRubyBot.config.user} yo mama joke").to respond_with_slack_message
  end
end

describe JokeList do
  list = JokeList.new
  describe '#fetch_joke' do
    it 'checks if it fetches chuck jokes' do
      expect(list.fetch_joke('chuck').first).to eql(
        'Chuck Norris doesn’t read books. He stares them down until he gets the information he wants.'
      )
    end
    it 'checks if it fetches misc jokes' do
      expect(list.fetch_joke('misc').first).to eql(
        'My wife told me to stop impersonating a flamingo. I had to put my foot down.'
      )
    end
    it 'checks if it fetches dad jokes' do
      expect(list.fetch_joke('dad').first).to eql(
        'Dad, did you get a haircut?... No, I got them all cut!'
      )
    end
    it 'checks if it fetches dev jokes' do
      expect(list.fetch_joke('dev').first).to eql(
        'I went to a street where the houses were numbered 128k, 256k and 512k. It was a trip down Memory Lane.'
      )
    end
    it 'checks if it fetches yomama jokes' do
      expect(list.fetch_joke('yomama').first).to eql(
        "Yo mama's so fat, when she fell I didn't laugh, but the sidewalk cracked up."
      )
    end
  end
  describe '#select_joke' do
    it 'checks if it select 1 chuck joke' do
      chuck_joke = list.select_joke('Tell me a chuck joke')
      chuck_file = File.read('./assets/chuck.json')
      chuck_array = JSON.parse(chuck_file)
      expect(chuck_array).to include(chuck_joke)
    end
    it 'checks if it select 1 dad joke' do
      dad_joke = list.select_joke('Tell me a dad joke')
      dad_file = File.read('./assets/dad.json')
      dad_array = JSON.parse(dad_file)
      expect(dad_array).to include(dad_joke)
    end
    it 'checks if it select 1 dev joke' do
      dev_joke = list.select_joke('Tell me a programming joke')
      dev_file = File.read('./assets/dev.json')
      dev_array = JSON.parse(dev_file)
      expect(dev_array).to include(dev_joke)
    end
    it 'checks if it select 1 misc joke' do
      misc_joke = list.select_joke('Tell me a misc joke')
      misc_file = File.read('./assets/misc.json')
      misc_array = JSON.parse(misc_file)
      expect(misc_array).to include(misc_joke)
    end
    it 'checks if it select 1 yomama joke' do
      yomama_joke = list.select_joke('Tell me a yo mama joke')
      yomama_file = File.read('./assets/yomama.json')
      yomama_array = JSON.parse(yomama_file)
      expect(yomama_array).to include(yomama_joke)
    end
  end
end
