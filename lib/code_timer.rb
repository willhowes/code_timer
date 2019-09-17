require 'time'

def code_timer(code)
  start_time = Time.now
  code
  end_time = Time.now
  time_taken = end_time - start_time
  "Time taken: #{time_taken}"
end
