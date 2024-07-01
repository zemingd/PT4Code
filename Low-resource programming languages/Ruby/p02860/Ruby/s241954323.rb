n = gets.to_i
s = gets.split.join
case
when n.odd? then puts 'No'
when s[0, n / 2] == s[n / 2, n] then puts 'Yes'
else puts 'No'
end
