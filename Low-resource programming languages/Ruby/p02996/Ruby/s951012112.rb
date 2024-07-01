n = gets.to_i
works = []
n.times do
  works << gets.split(" ").map(&:to_i)
end

works.each do |work|
  work << work[1] - work[0]
end

works.sort! {|a, b| (a[1] <=> b[1]).nonzero? || (a[0] <=> b[0])}

time_past = 0

ans = "Yes"
works.each do |work|
  if time_past + work[0] <= work[1]
    time_past += work[0]
  else
    ans = "No"
    break
  end
end
puts ans