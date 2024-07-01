require 'prime'
a, b = gets.split.map(&:to_i)

divs = Array.new(0)
for i in 1..(10**6)
  if a % i == 0 && b % i == 0
    divs.push(i)
  end
end
divs.uniq!
divs.sort!{|a,b| b <=> a}

cnt = 0
ln = divs.length
for i in 0..(ln-1)
  cnt += 1 if Prime.prime?(divs[i]) || divs[i] == 1
end
puts cnt