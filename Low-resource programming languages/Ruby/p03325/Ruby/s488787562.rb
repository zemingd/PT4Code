N = gets.to_i
a = gets.split.map(&:to_i)

cnt = 0
N.times do |i|
  loop do
    if a[i].even?
      a[i]/=2
      cnt+=1
    else
      break
    end
  end
end

puts cnt