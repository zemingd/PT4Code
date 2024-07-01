n,k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

(k..(n-1)).each do |i|
  # i学期の評点: k[i] + k[i-1] + ... + k[i-(k-1)]
  # (i - 1)学期の評点: k[i-1] + k[i-2] + ... + k[i-(k-1)] + k[i-k]
  if a_arr[i-k] < a_arr[i]
    puts "Yes"
  else
    puts "No"
  end
end
