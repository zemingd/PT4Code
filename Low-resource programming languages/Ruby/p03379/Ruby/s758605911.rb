n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
arr.freeze
sorted_arr = arr.dup.sort
L_median = sorted_arr[n/2]
S_median = sorted_arr[(n/2)-1]
arr.each do |num|
  if num >= L_median
    puts S_median
  elsif num <= S_median
    puts L_median
  end
end
