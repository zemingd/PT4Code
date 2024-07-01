S=gets.chomp
T=gets.chomp
s_to_t = {}
t_to_s = {}
(0..(S.length-1)).each do |i|
    s = S[i]
    t = T[i]
    if s_to_t[s] == nil && t_to_s[t] == nil
        s_to_t[s] = t
        t_to_s[t] = s
    elsif s_to_t[s] != t || t_to_s[t] != s
        puts 'No'
        exit
    end
end
puts 'Yes'
