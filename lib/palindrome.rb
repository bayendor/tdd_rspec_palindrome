# Implement palindrome with recursion
class Palindrome
  def self.palindrome?(input)
    string = input.to_s
    string.downcase!
    string.gsub!(/\W/, '')
    if string.length < 2
      true
    else
      characters = string.split('')
      first_character = characters.shift
      last_character = characters.pop
      first_character == last_character && palindrome?(characters.join)
    end
  end
end
