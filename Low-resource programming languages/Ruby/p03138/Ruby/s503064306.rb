n, k = gets.chomp.split(" ").map(&:to_i)
as = gets.chomp.split(" ").map(&:to_i)

if k == 0
  puts as.max
  exit
end

bits = Array.new(46) {Array.new(2, 0)}

45.downto(0) do |index|
  as.each do |a|
    if a[index] == 1
      bits[index][0] += 1
    end
  end
end

bits.each do |bit|
  bit[1] = n - bit[0]
end

must_1 = []
options = []

45.downto(0) do |index|
  if k[index] == 1
    options << [must_1.dup, index - 1]
    must_1 << index
  end
end

if must_1.include?(0)
  options << [must_1.dup, -1]
end

sums = []

options.each do |option|
  sum = 0
  45.downto(0) do |index|
    if index <= option[1]
      sum += bits[index].max * (2 ** index)
    elsif option[0].include?(index)
      sum += bits[index][1] * (2 ** index)
    else
      sum += bits[index][0] * (2 ** index)
    end
  end
  sums << sum
end

puts sums.max