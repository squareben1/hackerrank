require 'hourglass_sum'

simple_arr = [[1, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]

arr_1 = [[1, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]

describe '#hourglassSum' do 
  it 'returns simplest possible - all zeros bar 1' do
    expect(hourglass_sum(simple_arr)).to eq 1
  end

  it 'returns 1st three of 1st arr' do
    expect(hourglass_sum(arr_1)).to eq 3
  end
end