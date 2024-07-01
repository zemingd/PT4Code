n, m = gets.strip.split.map(&:to_i)
ab = readlines.map {|line| line.strip.split.map(&:to_i) }

ab = ab.sort_by(&:last)

#p ab

result=0
until ab.empty?
  cf, ct = c = ab.shift
  ab = ab.reject{|f, t| f < ct }
  result+=1
end

p result
