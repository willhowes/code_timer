require 'code_timer'

describe 'code_timer' do
  it 'gives the time taken to run the function given a blank array' do
    expect(code_timer('a')).to include("Time taken: ")
  end

  it 'gives the time taken given an array' do
    expect(code_timer('[a,a,a,a,a,a,a,a]')).to include("Time taken: ")
  end

  it 'gives the time taken given a function' do
    expect(code_timer(['a','b'].reverse)).to include("Time taken: ")
  end
end
