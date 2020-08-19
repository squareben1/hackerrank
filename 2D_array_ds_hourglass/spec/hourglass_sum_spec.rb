require 'hourglass_sum'

# [[1, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]

describe '#hourglassSum' do 
  
  simple_arr = [[1, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]
  it 'returns simplest possible - all zeros bar 1' do
    expect(hourglass_sum(simple_arr)).to eq 1
  end

  arr_1 = [[1, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]
  it 'returns 1st three of 1st arr' do
    expect(hourglass_sum(arr_1)).to eq 3
  end

  arr_2 = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]
  it 'returns 1st three of 1st arr & arr[1][1]' do
    expect(hourglass_sum(arr_2)).to eq 4
  end

  arr_3 = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]
  it '1st three of 1st arr + arr[1][1] + 1st three of 3rd' do
    expect(hourglass_sum(arr_3)).to eq 7
  end

  arr_4 = [[1, 1, 1, 4, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]
  it 'Move it along 1' do
    expect(hourglass_sum(arr_4)).to eq 8
  end

  arr_5 = [[0, 0, 0, 1, 1, 1], [0, 0, 0, 0, 1, 0], [0, 0, 0, 1, 1, 1], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]
  it 'Move it along to end of line' do
    expect(hourglass_sum(arr_5)).to eq 7
  end
end