a = gets.split.map &:to_i

def g(n)
1 if [1,3,5,7,8,10,12].include? n
4 if [4,6,9,11].include? n
end

puts g(a[0]) == g(a[1]) ? "Yes" : "No"