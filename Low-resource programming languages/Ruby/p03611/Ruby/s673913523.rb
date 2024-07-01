_, ns = [gets, gets.split.map(&:to_i)]

puts ns.each_with_object(Hash.new(0)) {|n, memo|
  memo[n-1] += 1
  memo[n] += 1
  memo[n+1] += 1
}.values.max