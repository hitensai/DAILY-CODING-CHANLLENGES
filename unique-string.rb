# write an algorithm which checks if the given string has unique chars
# "palindrome" should return true
# "Charancters" should return false


def is_unique?(str)
  chars = {}
  repeated_chars = {}
  return false if str.length > 26
  str.chars.each_with_index do |char|
    if chars.has_key?(char)
      repeated_chars[char] = true
    else
      chars[char] = true
    end
  end
  puts !repeated_chars.any?
end

is_unique?("chaa")