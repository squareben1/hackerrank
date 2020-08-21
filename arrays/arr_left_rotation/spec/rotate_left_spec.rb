require 'rotate_left'

arr = [1, 2, 3, 4, 5]

describe '#rotLeft' do 
  before(:each) do
    arr = [1, 2, 3, 4, 5]
  end
  it 'returns array unchanged' do
    expect(rotLeft(arr, 0)).to eq arr
  end

  it 'swaps arr of 2 ints 1 rotation' do
    expect(rotLeft([1, 2], 1)).to eq [2, 1]
  end

  it 'swaps arr of 3 ints 1 rotation' do
    expect(rotLeft([1, 2, 3], 1)).to eq [2, 3, 1]
  end

  it 'swaps arr of 5 ints 1 rotation' do
    expect(rotLeft(arr, 1)).to eq [2, 3, 4, 5, 1]
  end

  it 'swaps arr of 5 ints 2 rotations' do
    expect(rotLeft(arr, 2)).to eq [3, 4, 5, 1, 2]
  end
end