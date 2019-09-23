# Code Timer

A program which calculates how long it takes to run ruby's built in methods for arrays

Guidelines:
https://github.com/makersacademy/course/blob/master/algorithmic_complexity/timing_code.md


## EXAMPLE USES:
```
array_reverse = Proc.new { |array| array.reverse }
save_to_spreadsheet(code_timer_for_arrays(array_reverse), 'reverse_results')

array_last = Proc.new { |array| array.last }
printed_results(code_timer_for_arrays(array_last))

array_shuffle = Proc.new { |array| array.shuffle}
printed_results(code_timer_for_arrays(array_shuffle))

array_sort = Proc.new { |array| array.sort}
printed_results(code_timer_for_arrays(array_sort))
```
