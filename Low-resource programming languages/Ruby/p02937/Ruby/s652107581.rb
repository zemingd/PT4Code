s = gets.chomp!
t = gets.chomp!
sl = s.length

alpha = Hash.new
sl.times do |i|
    unless alpha[s[i]] then
        alpha[s[i]] = [i+1]
    else
        alpha[s[i]] << i+1
    end
end

ans = 0
now = 0
t.length.times do |i|
    unless alpha[t[i]] then
        ans = -1
        break
    else
        unless n = alpha[t[i]].detect{|x| x > now} then
            n = alpha[t[i]].first + sl
        end
        ans += n - now
        now = n % sl
    end
end

puts ans