N = gets.to_i
JOB = Array.new(N){gets.split.map &:to_i}
JOB.sort_by!{|v|v[1]}.reverse!

t = 10**9+7

JOB.each do |(a,b)|
  t = b if b < t
  t -= a
  if t < 0
    puts "No"
    exit
  end
end
puts "Yes"