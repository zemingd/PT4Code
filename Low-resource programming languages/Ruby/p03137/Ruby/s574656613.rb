n,m = gets.chomp.split(' ').map(&:to_i)
x = gets.chomp.split(' ').map(&:to_i).sort!
if x.size == 1
    puts '0'
    exit
end

diff = Array.new((m-1),0)
(m-1).times do |i|
    diff[i] = x[i+1]-x[i]
end
puts diff.sort.slice(0,m-n).inject(:+)