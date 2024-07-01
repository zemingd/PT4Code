N = gets.to_i
a = gets.split(' ').map(&:to_i)

def sum(arr)
  arr.inject(&:+)
end

ans = 10**10
su = 0
ara = a.inject(&:+)
N.times do |i|
  break if i == N-1
  su += a[i]
  ara -= a[i]

  cal = [su, ara].max - [su, ara].min
  ans = [ans, cal].min

  break if ans == 0
end

p ans