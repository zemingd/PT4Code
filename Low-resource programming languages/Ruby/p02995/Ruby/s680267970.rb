# https://atcoder.jp/contests/abc131/tasks/abc131_c



A, B, C, D = gets.split.map(&:to_i)

multiple_count = lambda do |x|
  B / x - (A - 1) / x
end

puts B - A + 1 - multiple_count.call(C) - multiple_count.call(D) + multiple_count.call(C.lcm(D))
