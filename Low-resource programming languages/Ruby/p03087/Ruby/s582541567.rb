qs = gets.split(' ').map(&:to_i)
x = []
s = gets.to_s.chomp.split("")
qs[1].times { |q| x << gets.split(' ').map(&:to_i) }
num = []
s.each_with_index do |string, i|
    next if i == 0
    if string == 'C' and s[i-1] == 'A'
        num << 1
    else
        num << 0
    end
    num << 0 if i == s.length - 1
end
x.each do |q|
    ans = num[q[0]-1..q[1]-2].count(1)
    puts ans
end
