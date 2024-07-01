n = gets.chomp.to_i
s_arr = readlines.map(&:chomp)
p s_arr
def anagram?(s1, s2)
    s1.chars.sort == s2.chars.sort
end
cnt= 0
(n-1).times do |i|
    (i+1).upto(n-1) do |j|
        if anagram?(s_arr[i], s_arr[j])
            cnt+=1
        end
    end
end
p cnt