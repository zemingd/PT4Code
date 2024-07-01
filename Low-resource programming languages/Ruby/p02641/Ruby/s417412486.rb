a, b = gets.chomp.split.map(&:to_i)

if b == 0
  puts a
else
  ex_arr = gets.chomp.split.map(&:to_i)
  arr = [*1..100]
  
  new_arr = arr - ex_arr
  new_arr = new_arr.map{|i| (i-a).abs}
  if new_arr.count(new_arr.min) == 2
    puts a - new_arr.min.abs
  else
    puts a + new_arr.min.abs
  end
end