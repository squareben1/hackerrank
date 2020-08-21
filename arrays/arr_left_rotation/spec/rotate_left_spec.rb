require 'rotate_left'

arr = [1, 2, 3, 4, 5]

describe '#rotate_left' do 
  before(:each) do
    arr = [1, 2, 3, 4, 5]
  end
  it 'returns array unchanged' do
    expect(rotate_left(arr, 0)).to eq arr
  end

  it 'swaps arr of 2 ints 1 rotation' do
    expect(rotate_left([1, 2], 1)).to eq [2, 1]
  end

  it 'swaps arr of 3 ints 1 rotation' do
    expect(rotate_left([1, 2, 3], 1)).to eq [2, 3, 1]
  end

  it 'swaps arr of 5 ints 1 rotation' do
    expect(rotate_left(arr, 1)).to eq [2, 3, 4, 5, 1]
  end

  it 'swaps arr of 5 ints 2 rotations' do
    expect(rotate_left(arr, 2)).to eq [3, 4, 5, 1, 2]
  end
end