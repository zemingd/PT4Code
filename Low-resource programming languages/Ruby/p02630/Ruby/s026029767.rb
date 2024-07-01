N = gets.to_i
A = gets.split.map &:to_i

a = A.group_by(&:itself).map{|i,ary| [i,ary.length]}.to_h

total = A.inject(&:+)
Q = gets.to_i
while line = gets
    b,c = line.split.map &:to_i
    count = a[b]
    if count then
        diff = (c-b)*count 
        total += diff
        a[b] = 0
        a[c] = 0 unless a[c]
        a[c] += count
    end
    puts total
end