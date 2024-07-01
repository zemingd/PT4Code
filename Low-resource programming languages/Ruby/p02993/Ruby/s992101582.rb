#文字列を１つずつ分割
S = gets.chomp.split('')
#puts "#{S}"
prv = nil
flg = 0
#puts "#{S.length}"

(S.length).times do |i|
    #puts "#{S[i]}"
    #puts "#{prv}"
    if S[i] == prv
        flg = 1
        break
    end
    prv = S[i]
end
if flg.zero?
    puts "Good"
else
    puts "Bad"
end
