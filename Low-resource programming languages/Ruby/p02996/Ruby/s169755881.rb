works = gets.chomp.to_i.times.map { |list, _| 
  a, b = gets.chomp.split(' ').map(&:to_i)
  { time: a, limit: b }
}

works.sort_by! { |w| w[:time] }
works.sort_by! { |w| w[:limit] }

worktime = 0
result = (works.reduce(-1) do |buffer, work|
  worktime += work[:time]
  break -1 if worktime > work[:limit] && buffer < work[:time]
  next (buffer - work[:time]) if buffer < work[:time]
  work[:limit] - worktime
end)

puts result == -1 ? "No" : "Yes"
