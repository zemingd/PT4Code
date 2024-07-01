# https://atcoder.jp/contests/abc049/tasks/arc065_a

CANDS = %w(dream dreamer erase eraser)

s = gets.chomp

valid = true
while s.size > 0
  seven = s[-7..-1]
  six = s[-6..-1]
  five = s[-5..-1]
  # p [seven, six, five]
  if CANDS.include?(seven) && seven.size == 7
    s = s[0..-8]
  elsif
    CANDS.include?(six) && six.size == 6
    s = s[0..-7]
  elsif CANDS.include?(five)
    s = s[0..-6]
  else
    valid = false
    break
  end
  # p s
end
puts valid ? 'YES' : 'NO'
