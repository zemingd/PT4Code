
n = gets.chomp.to_i

x = []
n.times do |i|
    x.push(gets.split(" ").map(&:to_i))
end

def rotation(a, i)
    if i.eql?("N") then
        a[0], a[1], a[5], a[4] = a[1], a[5], a[4], a[0]
    elsif i.eql?("S") then
        a[0], a[1], a[5], a[4] = a[4], a[0], a[1], a[5]
    elsif i.eql?("E") then
        a[0], a[2], a[5], a[3] = a[3], a[0], a[2], a[5]
    elsif i.eql?("W") then
        a[0], a[2], a[5], a[3] = a[2], a[5], a[3], a[0]
    elsif i.eql?("R") then
        a[3], a[1], a[2], a[4] = a[4], a[3], a[1], a[2]
    elsif i.eql?("L") then
        a[3], a[1], a[2], a[4] = a[1], a[2], a[4], a[3]
    end
    
    a
end

def f(a, b)
    "EEEESEEEESEEEESEEEESREEERREEE".each_char do |i|
        a = rotation(a, i)
        if a == b then
            return true
        end
    end

    false
end

x.size.times do |i|
    ((i + 1)...x.size).each do |j|
        if f(x[i], x[j]) then
            print "No\n"
            exit
        end
    end
end

print "Yes\n"

