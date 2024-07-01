works = gets.chomp.to_i.times.map { |list, _| 
  a, b = gets.chomp.split(' ').map(&:to_i)
  { time: a, limit: b }
}

works.sort_by! { |w| w[:time] }
works.sort_by! { |w| w[:limit] }

worktime = 0
result = (works.reduce([]) do |buffer, work|
  worktime += work[:time]
  if worktime > work[:limit] && buffer < work[:time]
    break -1
  end
  ({ done: worktime, amari: work[:limit] - worktime })
  work[:limit] - worktime
end)

puts result == -1 ? "No" : "Yes"
