q = gets.split[1].to_i
s = gets
 
q.times do
  counter = 0
  buf = ""
  l, r = gets.split.map(&:to_i)
  s[l-1..r-1].each_char do |c|
    counter += 1 if buf+c == 'AC'
    buf = c
  end
  puts counter
end