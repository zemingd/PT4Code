require 'prime'
a, b = gets.split.map(&:to_i)

divs = Array.new(0)
for i in 1..10**6
  break if a < i && b < i
  if a % i == 0 && b % i == 0
    divs.push(i)
    if b % (a/i) == 0
      divs.push(a/i)
    end
    if a % (b/i) == 0
      divs.push(b/i)
    end
  end
end
divs.uniq!
#puts divs.join(" ")
cnt = 0
for i in 0..(divs.length-1)
  cnt += 1 if Prime.prime?(divs[i]) || divs[i] == 1
end
puts cnt