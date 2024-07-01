ws = gets.chomp

n =
  if ws == 'RRR'
    3
  elsif /RR/ =~ ws
    2
  elsif ws.include? 'R'
    1
  else
    0
  end

puts n