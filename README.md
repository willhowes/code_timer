# Code Timer

A program which calculates how long it takes to run ruby's built in methods for arrays

Guidelines:
https://github.com/makersacademy/course/blob/master/algorithmic_complexity/timing_code.md

## How to run the code
Run the following in your command line:
```
git clone git@github.com:willhowes/code_timer.git
cd code_timer
bundle install
ruby lib/code_timer.rb
```

See examples below of how to use the methods.
- The ```save_to_spreadsheet``` method does what it says on the tin and saves the results to an .xls file given an array as the first argument and a name for the spreadsheet as the second argument

- The ```printed_results``` method prints the results of the code times in a nice format given an array as the only argument. 

## EXAMPLE USES:
```
array_reverse = Proc.new { |array| array.reverse }
save_to_spreadsheet(code_timer_for_arrays(array_reverse), 'reverse_results')

array_last = Proc.new { |array| array.last }
printed_results(code_timer_for_arrays(array_last))
```

## How to run the tests
Run the following in your command line from the project's directory:
```rspec``
