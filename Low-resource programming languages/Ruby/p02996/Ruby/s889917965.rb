n = gets.to_i
task = []
n.times do
  task << gets.split.map(&:to_i)
end
task.sort_by!{|a| [a[1],a[0]]}

t = 0
flg = true
task.each do |a,b|
  t += a
  if t > b
    flg = false
    break
  end
end

puts flg ? "Yes" : "No" 