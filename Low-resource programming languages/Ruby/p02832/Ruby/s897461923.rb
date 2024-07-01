n = gets.chomp.to_i
list = Array.new(n, 0)
A = gets.chomp.split.map(&:to_i)
tmp = 1
A.each_with_index do |a, i|
    if a == tmp
        tmp += 1
    else
        list[i] = 1
    end
end
ans = list.inject(:+)
puts ans == n ? -1 : ans