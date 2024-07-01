n = gets.to_i
works = []
n.times do
  works << gets.split.map(&:to_i)
end
works = works.sort { |a, b| b[1] <=> a[1] }.reverse
first = 0
second = 0
res = "Yes"

works.each do |work|
  first += work[0]
  second = work[1]
  res = "No" if first > second
end

puts res