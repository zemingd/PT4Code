n = STDIN.gets.chomp.to_i
ary = STDIN.gets.chomp.split(' ').map(&:to_i)

count = 0
n.times do |i|
  (n-1).downto(i+1) do |j|
    if ary[j] < ary[j-1]
      ary[j], ary[j-1] = ary[j-1], ary[j]
      count += 1
    end
  end
end

puts ary.join(' ')
puts count