n,k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

0.upto(n-k-1) do |i|
  if a_arr[i] < a_arr[k + i]
    puts "Yes"
  else
    puts "No"
  end
end
