K = gets.to_i
A, B = gets.split.map {|item| item.to_i}
flg = false

(A..B).each do |x|
    if x % K == 0 then
        flg = true
        break
    end
end

if flg == true then
    puts "OK"
else
    puts "NG"
end
