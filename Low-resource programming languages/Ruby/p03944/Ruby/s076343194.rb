$i = 0

def count_up
  $i += 1
  count_up
end

begin
  count_up
rescue SystemStackError
  puts $i
end