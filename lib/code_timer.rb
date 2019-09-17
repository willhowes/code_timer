require 'time'

private
def generate_string(number)
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(number) { charset.sample }.join
end

def generate_array_string(size)
  array = []
  size.times { array << generate_string(rand(1)) }
  array
end

def generate_array_integers(size)
  array = []
  size.times { array << rand(0..9) }
  array
end

def printed_results(results)
  results_to_print = []
  results.each do |size, result|
    results_to_print << "#{size}: #{result}\n"
  end
  results_to_print
end

public

SIZE_OF_ARRAYS = [50000, 100000, 150000, 200000, 250000, 300000,
  350000, 400000, 450000, 500000, 550000, 600000, 650000, 700000,
  750000, 800000, 850000, 900000, 950000, 10000000]

def code_timer_reverse
  results = {}
  (SIZE_OF_ARRAYS).each do |size|
    array_to_test = generate_array_integers(size)
    start_time = Time.now.nsec
    array_to_test.reverse
    end_time = Time.now.nsec
    time_taken = end_time - start_time
    results[size] = time_taken
  end
  results
end

puts printed_results(code_timer_reverse)
