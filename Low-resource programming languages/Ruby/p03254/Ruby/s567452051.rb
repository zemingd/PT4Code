attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs[0][0]
x = attrs[0][1]
ary = attrs[1]

ary.sort

a_sum = 0
ary.each {|v| a_sum += v }


if N == a_sum then
    puts N
elsif ary[0] > x then
    puts 0
else
    puts N - 1
end