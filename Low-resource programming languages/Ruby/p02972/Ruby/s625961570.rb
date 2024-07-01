n = gets.chomp.to_i
a = []
n.times { a.push(gets.chomp.to_i) }
n.times do |i|
  max = 0
  n.times do |j|
    if i != j then
      max = max < a[j] ? a[j] : max
    end
  end
  puts "#{max}"
end
  