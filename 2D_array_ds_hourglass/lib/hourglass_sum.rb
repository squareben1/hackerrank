def hourglass_sum(arr)
  sum = 0
  oneMove = arr[0][0..2].sum + arr[1][1] + arr[2][0..2].sum
  row1 = 0
  row4 = 3

  for x in row1..row4
    for i in 0..3
      hourglass = arr[x][i..i+2].sum + arr[x+1][i+1] + arr[x+2][i..i+2].sum
      if hourglass > sum
        sum = hourglass
      end
    end
  end 
  

  sum = oneMove > sum ? oneMove : sum
end