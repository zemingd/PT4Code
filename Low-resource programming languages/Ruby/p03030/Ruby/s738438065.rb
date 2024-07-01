n = gets.to_i
arr = []

n.times do |i|
  arr << gets.chomp.split.push(i)
end

arr.group_by{|e| e[0]}.sort_by{|e| e[0]}.each{|e|
  e[1].sort_by{|i| -i[1].to_i}.each{|f| puts f[2]+1}
}
