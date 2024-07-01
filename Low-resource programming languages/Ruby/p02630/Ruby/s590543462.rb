N = gets.chomp.to_i
aAry = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i


Q.times do
    b, c = gets.chomp.split.map(&:to_i)
    aAry.map! { |a| a == b ? c : a }
    puts aAry.sum
end