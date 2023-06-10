# Given the mapping a = 1, b = 2, ... z = 26, and an encoded message, count the number of ways it can be decoded.
# For example, the message '111' would give 3, since it could be decoded as 'aaa', 'ka', and 'ak'.
# You can assume that the messages are decodable. For example, '001' is not allowed.
class DecodeMessage
  attr_accessor :message

  def initialize(message)
    @message = message
  end

  def number_of_decodes
    number = 0

    # make sure the string doesn't start with zero, aka invalid
    return if @message.chars.first.to_i.zero?
    digits = @message.chars.map(&:to_i)
    dp = Array.new(digits.length + 1, 0)
    dp[0] = 1
    dp[1] = 1 if digits[0] != 0

    # Iterate through the remaining digits
    (2..digits.length).each do |i|
        # Check if the current digit can form a valid one-digit code
        if digits[i - 1] != 0
          dp[i] += dp[i - 1]
        end

        # Check if the current digit, along with the previous digit, can form a valid two-digit code
        two_digit = digits[i - 2] * 10 + digits[i - 1]
        if two_digit >= 10 && two_digit <= 26
          dp[i] += dp[i - 2]
        end
    end

    # Return the number of decodings for the entire message
    dp[digits.length]
    puts "Number of ways to decode '#{@message}': #{dp[digits.length]}"
  end
end

dm = DecodeMessage.new('11123')
dm.number_of_decodes