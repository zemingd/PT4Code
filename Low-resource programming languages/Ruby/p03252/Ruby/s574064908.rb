require 'pp'
require 'set'

n = gets.chomp!
t = gets.chomp!

same = {}
same2 = {}

n.length.times do |i|
    same[n[i]] ||= SortedSet.new
    same[n[i]] << i

    same2[t[i]] ||= SortedSet.new
    same2[t[i]] << i
end

if same.length != same2.length
    puts "No"
    exit(0)
end

v1 = same.values
v2 = same.values

puts v1 == v2 ? "Yes" : "No"
