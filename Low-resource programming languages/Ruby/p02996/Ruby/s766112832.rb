n = gets.to_i
works = []

n.times do
  works << gets.split.map(&:to_i)
end

used = 0
works = works.sort_by{|a| a[1]}

while works.size > 0
  nextwork = works.shift
  if nextwork[0] <= nextwork[1] - used
    used += nextwork[0]
  else
    puts :No
    exit
  end
end

puts :Yes
