def main
  n, k = gets.split.map(&:to_i)

  trees = Array.new(n)
  n.times do |i|
    h = gets.chomp.to_i
    trees[i] = h
  end

  trees.sort!
  # puts trees

  min_d = 2**32
  0.upto(n-k) do |i|
    d = trees[i+k-1] - trees[i]
    min_d = d if d < min_d
  end

  puts min_d
end

if __FILE__ == $0
  main
end
