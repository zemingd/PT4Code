n, m = gets.chomp.split(" ").map(&:to_i)
array = Array.new(n)

for i in 0..n-1
  array[i] = gets.chomp
end

array.sort!{|a, b| a <=> b}

puts array.join