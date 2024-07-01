N,x=gets.chomp.split(" ").map(&:to_i)
as=gets.chomp.split(" ").map(&:to_i).sort
cnt = 0
as.each do |a|
    x -= a
    if x < 0
        break
    end
    cnt += 1
end
cnt -= 1 if x > 0
p cnt