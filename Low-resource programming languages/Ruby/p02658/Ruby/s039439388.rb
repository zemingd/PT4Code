N = gets.to_i
ret = 1
ary = gets.split
if ary.include?('0')
    puts 0
    exit
end
ary.each do |s|
    ret = s.to_i * ret
    if ret > 10**18
        puts -1
        exit
    end
end
puts ret