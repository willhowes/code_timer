require 'time'
require 'spreadsheet'

module CodeTimer

  SIZE_OF_ARRAYS = [50000, 100000, 150000, 200000, 250000, 300000,
    350000, 400000, 450000, 500000, 550000, 600000, 650000, 700000,
    750000, 800000, 850000, 900000, 950000, 1000000]

  def code_timer_for_arrays(block_of_code)
    results = []
    (SIZE_OF_ARRAYS).each do |size|
      array_to_test = generate_array_integers(size)
      start_time = Time.now
      block_of_code.call(array_to_test)
      end_time = Time.now
      time_taken = ((end_time - start_time) * 100000.0)
      results << [size, time_taken]
    end
    results
  end

  def code_timer_for_arrays_given_size(block_of_code, size)
    results = []
    array_to_test = generate_array_integers(size)
    start_time = Time.now
    block_of_code.call(array_to_test)
    end_time = Time.now
    time_taken = ((end_time - start_time) * 100000.0)
    results << [size, time_taken]
    results
  end

  def generate_string(number)
    charset = Array('A'..'Z') + Array('a'..'z') + Array(1..9)
    Array.new(number) { charset.sample }.join
  end

  def generate_array_string(size)
    array = []
    size.times { array << generate_string(rand(1)) }
    array.shuffle
  end

  def generate_array_integers(size)
    array = []
    size.times { array << rand(0..9) }
    array.shuffle
  end

  def printed_results(results)
    puts "TIME OF CODE RESULTS:"
    results.each_with_index do |result, index|
      puts "#{result[0]}: #{result[1]}\n"
    end
  end

  def save_to_spreadsheet(results, file_name)
    book = Spreadsheet::Workbook.new
    book.create_worksheet :name => 'new_worksheet'

    results.each_with_index do |result, index|
      book.worksheet(0).insert_row(index, result)
    end

    book.write "#{file_name}.xls"
  end

end
