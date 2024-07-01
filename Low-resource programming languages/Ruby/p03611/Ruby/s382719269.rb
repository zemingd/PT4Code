# https://atcoder.jp/contests/abc072/tasks/arc082_a



N = gets.to_i
as = gets.split.map(&:to_i)

max = 0
as.each_with_object(Hash.new(0)) do |ai, hash|
  hash[ai - 1] += 1
  hash[ai] += 1
  hash[ai + 1] += 1

  this_max = [hash[ai - 1], hash[ai], hash[ai + 1]].max
  if this_max > max
    max = this_max
  end
end

puts max
