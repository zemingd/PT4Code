# https://atcoder.jp/contests/abc131/tasks/abc131_d

n = gets.to_i

tasks = []

n.times do
  cost, deadline = gets.split.map(&:to_i)
  tasks << [cost, deadline]
end

tasks.sort_by! { |i| i[1] }

current_time = 0

valid = true
tasks.each do |i|
  current_time += i[0]
  if current_time > i[1]
    valid = false
    break
  end
end

puts valid ? 'Yes' : 'No'

