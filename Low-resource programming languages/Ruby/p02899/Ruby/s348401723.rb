# https://atcoder.jp/contests/abc142/tasks/abc142_c



N = gets.to_i
As = gets.split.map(&:to_i)

puts As.each_with_index.to_h.sort.inject('') { |result, v| result + (v[1] + 1).to_s + ' ' }.strip
