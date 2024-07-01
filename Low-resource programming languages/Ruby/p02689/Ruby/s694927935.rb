n, m = gets.chomp.split(" ").map(&:to_i);
h_arr = gets.chomp.split(" ").map(&:to_i);
good_arr = []
1.step(n, 1) do |i|
  good_arr[i] = true
end
1.step(m, 1) do |i|
  a, b = gets.chomp.split(" ").map(&:to_i);
  if h_arr[a - 1] < h_arr[b - 1]
    good_arr[a] = false
  elsif h_arr[a - 1] > h_arr[b - 1]
    good_arr[b] = false
  else
    good_arr[a] = false
    good_arr[b] = false
  end
end

puts good_arr.select{|e| e == true}.count
