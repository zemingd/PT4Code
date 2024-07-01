n = gets.to_i
as = gets.split(' ').map { |e| e.to_i }

m = Hash.new(0)
as.each { |e| m[e] += 1 }

res = m.select { |k,v| v % 2 == 0 }.sort { |a, b| a[0] <=> b[0] }

if res.empty?
  puts 0
elsif res[0][1] >= 4
  puts res[0][0] * res[0][0]
elsif res.length > 1
  puts res[0][0] * res[1][0]
else
  puts 0
end  

