class HomeController < ApplicationController

  # GET /
  def index
    @name = Spell.random.name
    @other = Mention.random.quote
    @otherSpell = Spell.findCountsOfAllSpellsInMention
    @bookData = Mention.bookFrequency
    @test = Mention.topEightMostCommonNames
    @bookToSpellsMap = Mention.minimalSpellCountAmongAllBooks
    @top2SpellsMap = Mention.topNSpellsPerBook(8)
    @sentiment = Spell.sentimentPerSpellWriteFile
    @nlpSpellScoreByPassage = Mention.computeSentimentPerSpellUsingMentions
  end

  # GET /about
  def about
    @your_name = 'alexis herrera'
    #
  end

end
