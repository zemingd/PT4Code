_, m = gets.chomp.split(" ").map(&:to_i);
a_arr = gets.chomp.split(" ").map(&:to_i);

a_arr.sort!.reverse!

sum = 0
a_arr.each do |e|
  sum = sum + e
end

if a_arr[m - 1] < sum.to_f / (4 * m)
  puts 'No'
else
  puts 'Yes'
end
