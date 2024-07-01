# https://atcoder.jp/contests/abc150/tasks/abc150_d



N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

require 'prime'
index_of_2 = Prime.prime_division(as.first).first[1]

lcm = as.inject(1) do |result, ai|
  if Prime.prime_division(ai).first[1] != index_of_2
    puts 0
    exit
  end
  result.lcm(ai/2)
end

lcm_x_count = M / lcm

puts lcm_x_count / 2 + lcm_x_count % 2
