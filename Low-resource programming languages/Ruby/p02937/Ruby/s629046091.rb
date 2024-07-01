s = gets.chomp!
t = gets.chomp!
sl = s.length

alpha = Hash.new
sl.times do |i|
    if alpha[s[i]] then
        alpha[s[i]] << i+1
    else
        alpha[s[i]] = [i+1]
    end
end

alpha.each_key do |key|
    alpha[key] << alpha[key].first + sl
end

ans = 0
now = 0
t.length.times do |i|
    unless alpha[t[i]] then
        ans = -1
        break
    else
        n = alpha[t[i]].detect{|x| x > now} 
        ans += n - now
        now = n % sl
    end
end

puts ans