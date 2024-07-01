n, m = gets.split.map(&:to_i)
patterns = []

def dfs(array, patterns, limit)
  if array.length == limit
    patterns << array
  else
    dfs(array + [0], patterns, limit)
    dfs(array + [1], patterns, limit)
  end
  if array.empty?
    patterns
  end
end
dfs([], patterns, n)
# p patterns # => [[0, 0], [0, 1], [1, 0], [1, 1]]

rules = []
m.times do
  k, *s = gets.split.map(&:to_i)
  rules << s
end
ps = gets.split.map(&:to_i)
ps.each_with_index do |pnum, index|
  judge = (pnum == 0 ? :even : :odd)
  rules[index] = {switches: rules[index], judge: judge}
end
# p rules # => [{:switches=>[1, 2], :judge=>:even}, {:switches=>[2], :judge=>:odd}]

rules.each do |rule|
  break if patterns.empty?
  patterns.map! {|pattern|
    count = 0
    rule[:switches].each do |switch|
      count += pattern[switch-1]
    end
    if rule[:judge] == :even
      count.even? ? pattern : nil
    elsif rule[:judge] == :odd
      count.odd?  ? pattern : nil
    end
  }.compact!
end
# p patterns
puts patterns.count
