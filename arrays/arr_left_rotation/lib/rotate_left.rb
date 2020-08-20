
def rotate_left(arr, rot)
  if rot < 1 
    arr
  else
    arr.insert(1,arr.delete_at(0))
  end
end