N = gets.chomp.to_i
m = gets.chomp.split().map(&:to_i)
top = m[0]
ct = 1

1.upto(N-1) do |n|
  if m[n] >= top
    ct += 1
    top = m[n]
  end
end

puts ct