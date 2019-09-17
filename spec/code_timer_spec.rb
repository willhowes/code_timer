require 'code_timer'

describe 'code_timer' do
  it 'gives the time taken to run the function given a blank array' do
    expect(code_timer('a')).to include("Time taken: ")

  end
end
