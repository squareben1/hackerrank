def hourglass_sum(arr)
  sum = 0
  col1 = 0
  col4 = 3
  row1 = 0
  row4 = 3

  for col in col1..col4
    for row in row1..row4
      hourglass = arr[col][row..row+2].sum + arr[col+1][row+1] + arr[col+2][row..row+2].sum
      if hourglass > sum
        sum = hourglass
      end
    end
  end 

  sum
end