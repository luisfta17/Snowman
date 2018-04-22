class HiddenWord
  attr_reader(:word)

  def initialize(word)
    @word = word
  end



  def check_letter(letter)
    @word.downcase.include?(letter)
  end

  def display_word(letter)
    displayed = []
    guess = []
    guess.push(@word.downcase.split(""))
    for each_letter in guess[0]
      if each_letter == letter
        displayed.push(letter)
      else
        displayed.push("*")
      end
    end
    return displayed.join("")
  end


end
