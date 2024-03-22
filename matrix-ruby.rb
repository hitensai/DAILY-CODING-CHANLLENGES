 matrix = [[1,2,3], [0,5,6], [7,8,9]]
# this represents
# [1,2,3]
# [0,5,6]
# [7,8,9]

# write an algirthm that finds a 0 in the matrix and changes all the other elements in the same column and row as 0


def find_change_to_zero(matrix)
  row = {}
  column = {}

  # finding the element which is zero
  matrix.each_with_index do |row_arr, index|
    row_arr.each_with_index do |el, index_1|
      if el == 0
        row[index] = true
        column[index_1] = true
      end
    end
  end
  # changing the elements to zero
  row.each_key do |key|
    matrix[key] = matrix.collect { |el| el = 0 }
  end
  column.each_key do |key|
    matrix.map do |arr|
      arr[key] = 0    
    end
  end
  puts matrix

end    

find_change_to_zero(matrix)
