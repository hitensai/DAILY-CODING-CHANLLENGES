# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |el, index|
      if hash[el]
       return [index, hash[el]]
      else
        hash[target - el] = index
      end
    end
  end

  two_sum([2,7,11,15], 9)