n = gets.to_i

rs = []
names = []
n.times do |i|
    name, score = gets.split
    rs.push([name, score.to_i, i+1])
    names.push(name)
end

names.uniq!
names.sort!

names.each do |name| 
    targets = rs.find_all { |i| i[0] == name }
    targets.sort! {|a, b| b[1]  <=> a[1] }
    targets.each {|i| puts i[2] }
end