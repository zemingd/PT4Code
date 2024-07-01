N = gets.chomp.to_i
aAry = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
bAry = []
cAry = []
Q.times do
    tmp = gets.chomp.split.map(&:to_i)
    bAry.push(tmp[0])
    cAry.push(tmp[1])
end

Q.times do |i|
    # puts i
    aAry.map! { |a| a == bAry[i] ? cAry[i] : a }
    # p aAry
    puts aAry.sum
end
