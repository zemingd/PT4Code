s = gets.chomp
n = s.length
sc = s.slice(0..(n-1)/2 - 1)
tc = s.slice((n+3)/2 - 1..n-1)
ans = 'No'

if s == s.reverse && sc == sc.reverse && tc = tc.reverse
    ans = 'Yes'
end

puts ans