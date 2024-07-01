s=gets
if s.include? 'RRR'
  p 3
elsif s.include? 'RR' 
  p 2
elsif s.include? 'R'
  p 1
else
  p 0
end