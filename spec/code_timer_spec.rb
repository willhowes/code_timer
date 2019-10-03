require 'code_timer'
include CodeTimer

describe 'code_timer_for_arrays_reverse' do
  it 'gives code times for using reverse method on increased sizes of arrays' do
    array_reverse = Proc.new { |array| array.reverse }
    expect(CodeTimer.code_timer_for_arrays(array_reverse).last[1]).to be > code_timer_for_arrays(array_reverse).first[1]
  end

  it 'gives code times for the last method on increasing size of arrays' do
    array_last = Proc.new { |array| array.last }
    expect(CodeTimer.code_timer_for_arrays(array_last).last[1]).to be >= code_timer_for_arrays(array_last).first[1]
  end

  it 'gives code times for the shuffle method on increasing size of arrays' do
    array_shuffle = Proc.new { |array| array.shuffle }
    expect(CodeTimer.code_timer_for_arrays(array_shuffle).last[1]).to be >= code_timer_for_arrays(array_shuffle).first[1]
  end

  it 'gives code times for the sort method on increasing size of arrays' do
    array_sort = Proc.new { |array| array.sort }
    expect(CodeTimer.code_timer_for_arrays(array_sort).last[1]).to be >= code_timer_for_arrays(array_sort).first[1]
  end

  describe "#code_timer_for_arrays_given_size" do
    it 'handles a proc and the size of the array' do
      array_sort = Proc.new { |array| array.sort }
      expect(CodeTimer.code_timer_for_arrays_given_size(array_sort,100000).last[1]).to be >= code_timer_for_arrays(array_sort).first[1]
    end
  end
end
