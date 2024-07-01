s = STDIN.gets.chop
t = STDIN.gets.chop

m = {}

r = true

if (s.split('') & t.split('')).empty?
  puts 'Yes'
  return
end

s.length.times do |i|
  if m[t[i]]
    if m[t[i]] != s[i]
      r = false
      break
    end
  end
  m[t[i]] = s[i]
end

puts r ? 'Yes' : 'No'