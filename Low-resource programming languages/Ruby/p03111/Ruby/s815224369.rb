goals = gets.split.map(&:to_i)[1..-1]

bamboos = $stdin.read.split.map(&:to_i)

ans = [0,1,2,3].product(*Array.new(bamboos.size-1, [0,1,2,3])).map do |arr|
  h = [0,0,0,0]
  mp = 0
  arr.each_with_index.map do |v, i|
    [v, i]
  end.group_by do |a|
    a[0]
  end.each do |v, a|
    h[v] = a.map{|i| bamboos[i[1]]}.inject(:+)
    mp += [(a.size-1)*10, 0].max if v < 3
  end
  if h[0..2].include?(0)
    nil
  else
    [0,1,2].map do |i|
      (goals[i] - h[i]).abs
    end.inject(:+) + mp
  end
end.compact.min

puts ans
