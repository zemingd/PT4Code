# frozen_string_literal: true

_ = gets.to_i
a = gets.split.map(&:to_i).group_by(&:itself)
sum = a.values.flatten.sum
q = gets.to_i
rep = (1..q).map { |_n| gets.split.map(&:to_i) }

q.times do |n|
  if a.include?(rep[n][0])
    count = a[rep[n][0]].count
    diff = count * (rep[n][1] - rep[n][0])
    sum += diff
    a.delete(rep[n][0])
    if a.include?(rep[n][1])
      a[rep[n][1]] += Array.new(count) { rep[n][1] }
    else
      a[rep[n][1]] = Array.new(count) { rep[n][1] }
    end
  end
  # pp a
  puts sum
end
