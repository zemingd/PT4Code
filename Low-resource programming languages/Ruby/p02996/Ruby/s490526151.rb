n = gets.to_i
works = []
n.times do
  works << gets.split.map(&:to_i)
end
mytime = []
endtime = []

works.each do |w|
  mytime << w[0]
  endtime << w[1]
end
puts mytime.inject(:+) <= endtime.max ? "Yes" : "No"