n = gets.to_i
a = gets.split.map(&:to_i).sort
ans = 1
a.each do |num|
    ans *= num
    if ans > 10**18
        puts -1
        exit
    end
end
puts ans