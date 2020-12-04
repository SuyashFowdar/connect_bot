require 'json'

# JokeList Class
class JokeList
  def initialize
    @joke_map = {
      'misc' => 'misc',
      'yo momma' => 'yomama',
      'yo mama' => 'yomama',
      'developer' => 'dev',
      'programming' => 'dev',
      'chuck' => 'chuck',
      'dad' => 'dad'
    }
  end

  def fetch_joke(category)
    file = File.read("./assets/#{category}.json")
    JSON.parse(file)
  end

  def select_joke(message)
    @joke_map.each { |key, value| return fetch_joke(value).sample if message.include?(key) }

    [fetch_joke('misc'), fetch_joke('yomama'), fetch_joke('dev'), fetch_joke('chuck'), fetch_joke('dad')].sample.sample
  end
end
