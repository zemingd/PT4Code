lines = readlines.join.split.map(&:to_i)

X = lines.join("").to_i
p X
ary = []
X.times do |i|
    Y = X / (i+1)
    if Y * Y == X
        ary << Y
    end
end
if ary[0] == nil
    puts "No"
else
    puts "Yes"
end
