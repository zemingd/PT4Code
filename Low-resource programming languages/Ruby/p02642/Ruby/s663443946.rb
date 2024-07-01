N = gets.to_i
A = gets.split.map(&:to_i)
multi = {}
vals = A.sort.slice_when(&:!=).map {|x| multi[x.first] = true if x.size > 1 ; x.first }
count = 0
while !vals.empty?
  a = vals[0]
  count += 1 unless multi[a]
  vals = vals.select {|v| v % a != 0 }
end
puts count
