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

answer = {}

same.each do |_, s|
    i = s.first
    answer[t[i]] = s
end

puts same2 == answer ? "Yes": "No"
