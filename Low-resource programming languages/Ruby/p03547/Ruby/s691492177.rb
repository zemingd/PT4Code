def get_num(num)
  case num
  when 'A'
    10
  when 'B'
    11
  when 'C'
    12
  when 'D'
    13  
  when 'E'
    14
  when 'F'
    15
  end
end
  
x,y=gets.split.map &:to_s
rx=get_num(x)
ry=get_num(y)

if rx < ry
  puts '<'
elsif rx > ry
  puts '>'
elsif rx === ry
  puts '='
end