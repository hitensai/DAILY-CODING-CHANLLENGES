# Given an integer x, return true if x is a palindrome, and false otherwise. do not use ruby methods
def is_palindrome(x)
    arr = x.to_s.chars
    len = arr.length - 1
    (0..len).each do |i|
      if arr[i] == arr[len - i]
        next
      else
        return false
      end
    end
    true
  end