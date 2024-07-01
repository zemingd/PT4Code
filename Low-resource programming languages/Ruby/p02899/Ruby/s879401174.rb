n = gets.to_i
students = gets.split.map(&:to_i)

ans = []
n.times { ans << nil }

students.each do |n|
  ans[students[n-1]-1] = n
end

puts ans.join(" ")