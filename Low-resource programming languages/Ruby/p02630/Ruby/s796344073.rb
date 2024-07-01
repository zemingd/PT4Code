# frozen_string_literal: true

_ = gets.to_i
a = gets.split.map(&:to_i).group_by(&:itself).map { |k, v| [k, v.count] }.to_h
sum = a.map { |k, v| k * v }.sum
q = gets.to_i
rep = (1..q).map { |_n| gets.split.map(&:to_i) }

q.times do |n|
  unless a[rep[n][0]].nil?
    diff = a[rep[n][0]] * (rep[n][1] - rep[n][0])
    sum += diff
    if a[rep[n][1]].nil?
      a[rep[n][1]] = a[rep[n][0]]
    else
      a[rep[n][1]] += a[rep[n][0]]
    end
    a.delete(rep[n][0])
  end
  # pp a
  puts sum
end
