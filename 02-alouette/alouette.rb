class Alouette
  attr_reader :lines, :lyrics

  # def initialize
  #   @lyrics = [ "Et la tête!", "Et le bec!", "Et les yeux", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!" ]
  #   @lines = []
  # end


  def self.lines_for_verse(verse_number)
    @lyrics = [ "Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!" ]
    @lines = []

    until verse_number == -1
      @lines << @lyrics[verse_number]
      verse_number -= 1
    end
    return @lines
  end

end
