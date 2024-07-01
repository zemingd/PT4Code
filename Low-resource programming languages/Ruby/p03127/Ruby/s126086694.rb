i = gets.to_i
a = gets.chomp.split.map(&:to_i)
l = 0
loop do 
    a.sort!.reverse!
    (a.size - 1).times do |hoge|
        a[hoge] %= a[hoge + 1]
    end
    a.delete(0)
    break if a.size == 1
    l = 0
end
puts a
