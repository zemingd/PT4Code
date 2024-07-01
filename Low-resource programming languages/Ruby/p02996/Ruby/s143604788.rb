$debug = false

n = gets.to_i
works = []
n.times do
  a, b = gets.split.map(&:to_i)
  works << {hours: a, deadline: b}
end

works.sort! { |a, b| (a[:deadline] <=> b[:deadline]).nonzero? || b[:hours] <=> a[:hours] }
p works if $debug

flag = true
limit = 0
rest = 0
works.each do |work|
  puts "limit: #{limit}, hours: #{work[:hours]}, deadline #{work[:deadline]}}" if $debug
  if limit < work[:deadline]
    rest += work[:deadline] - limit
    limit = work[:deadline]
  end

  print "rest: #{rest}" if $debug
  rest -= work[:hours]
  puts " => #{rest}" if $debug
  if rest < 0
    flag = false
    break
  end
end

puts flag ? "Yes" : "No"
