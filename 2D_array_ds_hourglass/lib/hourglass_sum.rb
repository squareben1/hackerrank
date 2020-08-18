def hourglass_sum(arr)
  arr[0][0..2].sum + arr[1][1] + arr[2][0..2].sum
end