a=gets.chomp.to_i
o = case(a)
when 25
    'Christmas'
when 24
    'Christmas Eve'
when 23
    'Christmas Eve Eve'
else
    'Christmas Eve Eve Eve'
end
puts o 