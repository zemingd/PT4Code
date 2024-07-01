N, Q = gets.split(' ').map(&:to_i)
S = gets

lr = []

Q.times do
  lr << gets.split(' ').map(&:to_i)
end

lr.each do |l|
  s = S[(l[0]-1)..(l[1]-1)]
  slen = s.length
  s.gsub!('AC', '')
  puts (slen - s.length) / 2
end
