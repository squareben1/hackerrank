
def rotLeft(arr, rot)
  rot.times do 
    first = arr.shift
    arr.push(first)
  end 
  arr
end


