n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
n.times do |i|
  a[i]/=2
end
b=1
n.times do |i|
  b=b.lcm(a[i])
end
if b.even?
  a.each do |aa|
    if aa.odd?
      puts 0
      exit
    elsif (b/a).even?
      puts 0
      exit
    end
  end
end
puts (m/b+1)/2
