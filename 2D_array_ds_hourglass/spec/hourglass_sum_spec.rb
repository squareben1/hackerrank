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

  arr_6 = [[0, 0, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0]]
  it 'Move to next row' do
    expect(hourglass_sum(arr_6)).to eq 7
  end

  acceptance_arr = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
  it 'Returns correct output from sample' do
    expect(hourglass_sum(acceptance_arr)).to eq 19
  end

  failing_arr = [[0, -4, -6, 0, -7, -6], [-1, -2, -6, -8, -3, -1], [-8, -4, -2, -8, -8, -6], [-3, -1, -2, -5, -7, -4], [-3, -5, -3, -6, -6, -6], [-3, -6, 0, -8, -6, -7]]
  it 'Returns correct output from failing sample of -ve ints' do
    expect(hourglass_sum(failing_arr)).to eq -19
  end
end