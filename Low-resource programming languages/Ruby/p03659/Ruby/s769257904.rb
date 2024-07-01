N = gets.to_i
a = gets.split(' ').map(&:to_i)

def sum(arr)
  arr.inject(&:+)
end

ans = 10**10
N.times do |i|
  next if i == 0
  su = 0
  ara = 0

  a.each_with_index {|ai, index|
    if index < i
      su += ai
    else
      ara += ai
    end
  }

  cal = [su, ara].max - [su, ara].min
  ans = [ans, cal].min

  break if ans == 0
end

p ans