s = gets.split.map(&:to_i)
n = s[0]
x = s[1]
m = []
result = 0
min = 10**5
n.times{
    i = gets.chomp.to_i
    min = i if( i<min )
    x = x-i
    result = result+1
}
result += (x/min).to_i
puts result