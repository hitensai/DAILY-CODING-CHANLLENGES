# Given an array of integers, write a method to move all zero elements to the end of the array
# if there are no zeros return the input array


def move_zeros_to_end(a)
  zero_count = nums.count(0)
  nums.delete(0)
  nums.concat([0] * zero_count)
end

move_zeros_to_end([1,0,3,4,0,7])
