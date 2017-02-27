class Alouette
  attr_reader :lines, :lyrics

  # def initialize
  #   @lyrics = [ "Et la tête!", "Et le bec!", "Et les yeux", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!" ]
  #   @lines = []
  # end


  def self.lines_for_verse(verse_number)
    @lyrics = [ "la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos" ]
    @lines = []

    until verse_number == -1
      @lines << "Et #{@lyrics[verse_number]}!"
      verse_number -= 1
    end
    return @lines
  end

  def self.verse(verse_number)
    self.lines_for_verse(verse_number)
    # @lyrics = [ "la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos" ]
    verse = ""

    2.times do
      verse += "Je te plumerai #{ @lyrics[verse_number] }.\n"
    end

    until verse_number == -1
      2.times do
        verse += "Et #{ @lyrics[verse_number] }!\n"
      end
      verse_number -= 1
    end

    2.times do
      verse += "Alouette!\n"
    end
    verse += "A-a-a-ah"


  end

end
