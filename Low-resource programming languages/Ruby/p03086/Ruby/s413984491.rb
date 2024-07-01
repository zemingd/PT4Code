arr = gets.chomp.split("")
count = 0
max = 0
arr.length.times{|i|
  if "ACGT".include?(arr[i]) then
    count += 1
  elsif count > max then
    max = count
    count = 0
  end
  }
puts max