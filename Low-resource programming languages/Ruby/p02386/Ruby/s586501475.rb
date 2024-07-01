
Base = [[1, 2, 3, 4, 5, 6], [1, 3, 5, 2, 4, 6], [1, 5, 4, 3, 2, 6], [1, 4, 2, 5, 3, 6], [5, 1, 3, 4, 6, 2], [5, 3, 6, 1, 4, 2], [5, 6, 4, 3, 1, 2], [5, 4, 1, 6, 3, 2], [6, 5, 3, 4, 2, 1], [6, 3, 2, 5, 4, 1], [6, 2, 4, 3, 5, 1], [6, 4, 5, 2, 3, 1], [2, 6, 3, 4, 1, 5], [2, 3, 1, 6, 4, 5], [2, 1, 4, 3, 6, 5], [2, 4, 6, 1, 3, 5], [4, 1, 5, 2, 6, 3], [4, 5, 6, 1, 2, 3], [4, 6, 2, 5, 1, 3], [4, 2, 1, 6, 5, 3], [3, 5, 1, 6, 2, 4], [3, 1, 2, 5, 6, 4], [3, 2, 6, 1, 5, 4], [3, 6, 5, 2, 1, 4]]

class Dice

def initialize(arr)
@all = []
Base.each{|b|
temp = Array.new(6)
for j in 1..6
temp[j-1] = arr[ b[j-1] -1 ]
end
@all.push(temp)
}
@all.sort!
end

def getfirst()
    return @all[0]
  end

end


n = gets.to_i

sample = []
for j in 1..n
sample.push(Dice.new(gets.split.map(&:to_i)).getfirst())
end

flag = false

for i in 1..(n-1)
for j in 0..(i-1)

if sample[i] == sample[j] then
flag = true
break
end

end

if flag == true then
break
end

end

if flag == true then
puts "No"
else
puts "Yes"
end







