N,Q = gets.split.map(&:to_i)
str = gets.chomp
Q.times{
  l,r = gets.split.map(&:to_i)
  ans = 0
  ((l-1)..(r-2)).each{|index|
    ans += 1 if str[index..(index+1)] == 'AC'
  }
  puts ans
}