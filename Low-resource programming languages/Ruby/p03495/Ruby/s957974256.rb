n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

kinds = a.uniq.count
if kinds <= k
  puts 0
end

group = a.group_by {|v| v }.map {|k, v|
  {k => v.count}
}.reduce(:merge).sort {|(k1, v1), (k2, v2)|
  v1 <=> v2
}
p group[0..(kinds - k - 1)].map(&:last).reduce(:+)