 class Game
  attr_reader(:player, :word, :guessed_letters)
  #attr_writer(:guessed_letters)

  def initialize(player, word)
    @player = player
    @word = word
    @guessed_letters = []
  end

  def take_a_guess(letters)
    if @word.check_letter(letters)
      @guessed_letters.push(letters)
    end
    for letter in @guessed_letters
      return  @word.display_word(letter)
    end
  end

end
