n = gets.chomp.to_i
a = []
(1..n).each do |i|
    a.push(gets.chomp.to_i) # 次のボタンの位置
end

btn = 0

(1..n).each do |cnt|
    if btn == 1
        puts "#{cnt-1}"
        return
    end
    btn = a[btn]-1
end

puts "-1"