# frozen_string_literal: true

_ = gets.to_i
a = gets.split.map(&:to_i)
a_memo = [[a, a.sum]]
q = gets.to_i
rep = (1..q).map { |_n| gets.split.map(&:to_i) }

q.times do |n|
  sum = a_memo[n][1]
  if a.include?(rep[n][0])
    a_groupbyed = a.group_by(&:itself)
    count = a_groupbyed[rep[n][0]].count
    diff = count * (rep[n][1] - rep[n][0])
    sum += diff
    # pp [count, diff, sum]
    a_groupbyed[rep[n][0]] = Array.new(count) { rep[n][1] }
    a = a_groupbyed.values.flatten.sort
  end
  a_memo << [a, sum]
  # pp a
  puts sum
end
