n = gets.to_i
l = gets.chop.split.map(&:to_i)

num = [0]*(10**5+2)

l.each do |x|
    num[x-1] += 1
    num[x] += 1
    num[x+1] += 1
end

puts num.max