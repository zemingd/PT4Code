n = gets.strip.to_i
s = readlines.map {|line| line.strip.split('').sort }

result = 0
s.group_by(&:itself).each do|e|
  num = e.last.length
  result += num*(num-1)/2
end

p result
