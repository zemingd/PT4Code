result = (0..9).to_a.repeated_permutation(4).map {|a,b,c,d| [a,b,c,d].inject(:+) }.inject(Hash.new(0)) {|a, e| a[e] += 1; a}
STDIN.read.split("\n").map(&:chomp).map(&:to_i).each do |n|
  puts result[n] || 0
end