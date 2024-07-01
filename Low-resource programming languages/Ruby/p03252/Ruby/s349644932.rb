a = gets.chomp
b = gets.chomp

dups = []
a.chars.each_with_index do |i, idx|
  dups << i if a[idx] == b[idx]
end

res = true
dups.each do |i|
  # puts "#{i}: #{a.count(i)}/#{b.count(i)}"
  if a.count(i) > 1 && b.count(i) == 1 ||
      a.count(i) == 1 && b.count(i) > 1
    res = false
  end
end

puts res ? "Yes" : "No"