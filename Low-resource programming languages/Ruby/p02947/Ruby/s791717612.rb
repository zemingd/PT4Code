n = gets.to_i
s = []
n.times { s << gets.chomp }

sorted_s = s.map { |sn| sn.chars.sort.join }.sort

counts = []
successive = 0
sorted_s.each_with_index do |sn, i|
  if sn == sorted_s[i - 1] || i == 0
    successive += 1
  else
    counts << successive
    successive = 1
  end
end
counts << successive

answer = counts.map { |n| n * (n - 1) / 2 }

puts answer.inject(:+)
