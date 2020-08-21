def hourglass_sum(arr)
  # first hourglass - NOTE:
  # description states that the input will be -9 <= R <= 9. Therefore
  # smallest possible value will be -9*7 (as there are 7 elements in an hourglass)
  # So one can just initialize the max value to -63 instead of the first hourglass:
  max = arr[0][0..2].sum + arr[1][1] + arr[2][0..2].sum
  # for readability:
  col1 = 0
  col4 = 3
  row1 = 0
  row4 = 3

  for col in col1..col4
    for row in row1..row4
      hourglass = arr[col][row..row+2].sum + arr[col+1][row+1] + arr[col+2][row..row+2].sum
      if hourglass > max
        max = hourglass
      end
    end
  end 

  max
end