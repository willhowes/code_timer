require 'code_timer'

describe 'code_timer_reverse' do
  it 'gives code times for using reverse method on increased sizes of arrays' do
    array_reverse = Proc.new { |array| array.reverse }
    expect(code_timer(array_reverse).last[1]).to be > code_timer(array_reverse).first[1]
  end

  it 'gives code times for the last method on increasing size of arrays' do
    array_last = Proc.new { |array| array.last }
    expect(code_timer(array_last).last[1]).to be > code_timer(array_last).first[1]
  end
end
