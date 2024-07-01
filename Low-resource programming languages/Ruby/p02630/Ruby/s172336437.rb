N = gets.chomp.to_i
aAry = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i

nAry = Array.new(10 ** 5 + 1, 0)

aAry.each do |a|
    nAry[a] += a
end

Q.times do
    b, c = gets.chomp.split.map(&:to_i)
    if nAry[b] != 0 then
        nAry[c] += c * (nAry[b] / b)
        nAry[b] = 0
    end
    puts nAry.sum
end
