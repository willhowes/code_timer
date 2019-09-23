require 'code_timer'

describe 'code_timer_reverse' do
  it 'gives code times for reverse one array' do
    array_reverse = Proc.new { |array| array.reverse }
    expect(code_timer(array_reverse).last[1]).to be > code_timer(array_reverse).first[1] 
  end
end
