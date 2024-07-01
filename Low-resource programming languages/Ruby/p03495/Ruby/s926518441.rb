n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
flg = 0

kinds = a.uniq.count
if kinds <= k
  puts 0
  flg = 1
end

group = a.group_by {|v| v }.map {|k, v|
  [k, v.count]
}.sort {|a, b|
  a.last <=> b.last
}[0..(kinds - k - 1)]
puts group.map(&:last).reduce(:+) if flg == 0