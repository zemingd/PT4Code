# https://atcoder.jp/contests/abc119/tasks/abc119_c
N, *ABC = gets.split.map(&:to_i)
l = []
N.times do
  l << gets.to_i
end

cost = 10 ** 9
[0, 1, 2, 3].repeated_permutation(N).each do |arys|
  temp_cost = 0
  length = [0, 0, 0] # a,b,c
  mp = [0, 0, 0] # a,b,c

  N.times do |i|
    if arys[i] != 3
      length[arys[i]] += l[i]
      mp[arys[i]] += 10
    end
  end
  next if mp.any? { |m| m == 0 }

  3.times do |i|
    temp_cost += mp[i] + (length[i] - ABC[i]).abs
  end

  cost = cost > temp_cost ? temp_cost : cost
end

p cost - 30