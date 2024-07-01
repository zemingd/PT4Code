# https://atcoder.jp/contests/abc043/tasks/abc043_b

inp = gets.chomp
res = []

inp.chars.each do |c|
  case c
  when '0'
    res << c
  when '1'
    res << c
  else
    res.pop    
  end
end

puts res.join('')