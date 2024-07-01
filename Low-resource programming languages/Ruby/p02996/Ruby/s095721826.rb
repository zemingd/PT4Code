# N, M = gets.chomp.split.map(&:to_i)
# T = gets.chomp.chars
N = gets.chomp.to_i
works = []
N.times do 
  a, b = gets.chomp.split.map(&:to_i)
  works << b * 1e10 + a
end

works.sort!
# p works

ans = true
consumed = 0
works.each do |w|
  b = w / 1e10
  a = w % 1e10

  consumed += a
  # p consumed
  # p b
  if (consumed <= b)
    # ok
  else
    ans = false
    break
  end
end

if ans
  print "Yes\n"
else
  print "No\n"
end