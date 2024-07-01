x = gets.chomp.split.map(&:to_i).first

cnt = 0
amt = 100
loop do
    break if amt >= x
    amt = (amt * 1.01).floor
    cnt = cnt + 1
end

puts cnt
