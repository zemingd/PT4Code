gets
As = gets.split.map(&:to_i)

pairs = []

As.uniq.sort.reverse.each do |n|
  if As.count(n) >= 2
    pairs.push(n)
  end

  if pairs.size >= 2
    puts pairs.inject(:*)
    exit
  end
end

puts 0
