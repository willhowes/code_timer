require 'code_timer'

describe 'code_timer_reverse' do
  it 'gives code times for reverse one array' do
    expect(code_timer_reverse).to include("Time taken: ")
  end
end
