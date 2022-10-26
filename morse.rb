@dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(letter)
  @dictionary[letter]
end

def decode_word(word)
  @word_array = word.split
  @current_word = ''
  @word_array.each do |letter|
    @current_word += decode_char(letter)
  end
  @current_word
end

def decode(message)
  @message_array = message.split('  ')
  @current_message = ''
  @message_array.each do |word|
    @current_message += "#{decode_word(word)} "
  end
  @current_message.strip
end

print decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

