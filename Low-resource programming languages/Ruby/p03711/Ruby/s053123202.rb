ary = gets.split(" ").map(&:to_i)
g1 = [1,3,5,7,8,10,12]
g2 = [4,6,9,11]
g3 = [2]

result = []
ary.each do |a|
    result.push("g1") if g1.include?(a)
    result.push("g2") if g2.include?(a)
    result.push("g3") if g3.include?(a)
end

output = "No"
output = "Yes" if result[0] == result[1]
puts output