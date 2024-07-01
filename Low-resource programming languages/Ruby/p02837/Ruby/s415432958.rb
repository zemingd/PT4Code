n = gets.to_i
people = n.times.map do
  a = gets.to_i
  a.times.map do
    x, y = gets.split.map &:to_i
    [x-1, y]
  end
end

max = 0
(1 << n).times do |c|
  test = [nil] * n
  if n.times.all? { |i|
    next true if c[i] == 0
    people[i].all? { |(x, y)|
      next false if test[x] and test[x] != y or c[x] != y
      test[x] = y
      true
      }
    }
    #p c.to_s(2).rjust n
    cnt = n.times.count { |i| c[i] == 1 }
    max = [max, cnt].max
  end
end

p max