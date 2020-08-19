def hourglass_sum(arr)
  sum = 0
  oneMove = arr[0][0..2].sum + arr[1][1] + arr[2][0..2].sum
  twoMove = arr[0][1..3].sum + arr[1][2] + arr[2][1..3].sum

  sum = oneMove > twoMove ? oneMove : twoMove
  # for i in 0..3
  #   arr[0][0..2].sum + arr[1][1] + arr[2][0..2].sum
  # end
  # need to just iterate over 4 times incrementing positions each time
end