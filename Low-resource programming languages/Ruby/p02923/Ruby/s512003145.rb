n = gets.chomp.to_i
h_array = gets.chomp.split.map(&:to_i)
result = []
count = 0
h_array.each_cons(2) do |h1, h2|
  if h1 >= h2
    count += 1
  else
    count = 0
  end
  result.push(count)
end

puts result.max