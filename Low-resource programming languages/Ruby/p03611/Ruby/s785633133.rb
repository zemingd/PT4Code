# https://atcoder.jp/contests/abc072/tasks/arc082_a



N = gets.to_i
as = gets.split.map(&:to_i)

arr = as.inject([]) { |result, ai|
  result << ai - 1
  result << ai
  result << ai + 1
}

puts arr.uniq.map {|x| arr.count(x)}.max
