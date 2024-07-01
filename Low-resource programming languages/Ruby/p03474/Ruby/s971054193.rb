a,b = gets.split.map(&:to_i)
s = gets.strip.split('-')
r = /\A[\d]+\z/
puts s[0] =~ r && s[1] =~ r && s[0].size == a && s[1].size == b ? 'Yes' : 'No'

