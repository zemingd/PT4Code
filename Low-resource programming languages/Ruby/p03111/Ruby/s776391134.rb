N, *ABC = gets.split.map(&:to_i)
l = []
N.times do
  l << gets.to_i
end

cost = 10 ** 9
[0, 1, 2, 3].repeated_permutation(N).each do |arys|
  next if [0, 1, 2].any? { |i| !arys.include?(i) }
  temp_cost = 0
  length = [0, 0, 0] # a,b,c
  mp = 0

  N.times do |i|
    if arys[i] != 3
      length[arys[i]] += l[i]
      mp += 10
    end
  end

  temp_cost = mp
  3.times do |i|
    temp_cost += (length[i] - ABC[i]).abs
  end

  cost = cost > temp_cost ? temp_cost : cost
end

p cost - 30