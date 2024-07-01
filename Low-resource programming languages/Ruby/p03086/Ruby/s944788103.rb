s = gets.chop
acgt = s[/([A|C|G|T]?)/]
if acgt
  puts acgt.length
else
  puts 0
end