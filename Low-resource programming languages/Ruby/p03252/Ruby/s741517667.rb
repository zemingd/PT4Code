s = gets.chomp
t = gets.chomp

st = {}
ts = {}
s.size.times do |i|
    if st[s[i]].nil? && ts[t[i]].nil?
        st[s[i]] = t[i]
        ts[t[i]] = s[i]
    elsif st[s[i]] == t[i] && ts[t[i]] == s[i]
    else
        puts "No"
        break
    end
end and puts "Yes"