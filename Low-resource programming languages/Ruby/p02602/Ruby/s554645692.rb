n, k = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)
ary_n = [1]

ary.each do |x|
  ary_n << ary_n[-1] * x
end

(n-k).times do |i|
  if ary_n[i+k] / ary_n[i] < ary_n[i+k+1] / ary_n[i+1]
    puts "Yes"
  else
    puts "No"
  end
end
