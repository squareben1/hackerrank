
def rotate_left(arr, rot)
  rot.times do 
    first = arr.shift
    arr.push(first)
  end 
  arr
end


