N, Q = gets.split(' ').map(&:to_i)
S = gets

ac = []

Q.times do
  l = gets.split(' ').map(&:to_i)
  s = S[(l[0]-1)..(l[1]-1)]
  slen = s.length
  s.gsub!('AC', '')
  puts (slen - s.length) / 2
end
