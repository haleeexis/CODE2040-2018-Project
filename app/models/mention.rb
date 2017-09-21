require 'json'

class Mention

  def initialize(params)
    @book = params["Book"]
    @quote = params["Concordance"]
    @position = params["Position"]
    @name = params["Spell"]
  end

  attr_reader :book, :quote, :position, :name

  def self.data
    path = 'data/mentions.json'
    file = File.read(path)
    JSON.parse(file)
  end

  def self.random
    new(data.sample)
  end

  #function to find the frequency of each book in the data set
  def self.bookFrequency
    map = Hash.new(0)
    mentionArr = Mention.data
    for mention in mentionArr
      map[mention["Book"]] = map[mention["Book"]] + 1
    end
    return map;
  end

  #function to find the most common names in mentions
  def self.topEightMostCommonNames
    map = Hash.new([])
    mentionArr = Mention.data
    for mention in mentionArr
      map[mention["Book"]] = map[mention["Book"]] + 1
    end
    return map;
  end


end
