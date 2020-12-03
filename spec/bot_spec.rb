describe SlackRubyBot::Commands do
  it 'Checks if joke is sent upon requesting' do
    expect(message: "#{SlackRubyBot.config.user} joke").to respond_with_slack_message
  end
end
