a=gets.chomp.to_i
b=gets.chomp.split(" ").map(&:to_i).inject(:*)
cnt=0
loop do
    if b.even?
        b = b/2
        cnt+=1
    else
        break
    end
end
puts cnt