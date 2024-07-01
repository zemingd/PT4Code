N,x = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
A.sort!
num = 0
A.each do |a|
    if a <= x then
        x -= a
        num += 1
    else
        break
    end
end
num -=1 if x != 0
puts num