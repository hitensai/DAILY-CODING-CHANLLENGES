# write an algorithm that returns the most common character in a string
# https://medium.com/@gklsan/ruby-coding-interview-question-most-common-character-in-the-string-fec104fa14f9


def most_common_character(str)
  return if str.length.zero?
  strHash = Hash.new(0)

  str.chars.each do |char|
    if strHash[char]
      strHash[char] += 1
    else
      strHash[char] = 0
    end
  end

  max_frequency = strHash.values.max

  puts strHash.key(max_frequency)
end

most_common_character("wsdfghjlws")