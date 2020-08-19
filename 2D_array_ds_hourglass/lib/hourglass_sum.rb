def hourglass_sum(arr)
  sum = 0
  oneMove = arr[0][0..2].sum + arr[1][1] + arr[2][0..2].sum
    for i in 0..3 
      if arr[0][i+1..i+3].sum + arr[1][i+2] + arr[2][i+1..i+3].sum > sum
        sum = arr[0][i+1..i+3].sum + arr[1][i+2] + arr[2][i+1..i+3].sum
      end
    end 

  sum = oneMove > sum ? oneMove : sum
end