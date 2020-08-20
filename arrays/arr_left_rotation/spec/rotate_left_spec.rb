require 'rotate_left'

arr = [1, 2, 3, 4, 5]

describe '#rotate_left' do 
  it 'returns array unchanged' do
    expect(rotate_left(arr, 0)).to eq arr
  end
end