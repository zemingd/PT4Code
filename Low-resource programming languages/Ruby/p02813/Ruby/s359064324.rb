N = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

hash = {}
i = 1
(1..N).to_a.permutation(N) do |arr|
  hash[arr] = i
  i += 1
end

p (hash[p]-hash[q]).abs
