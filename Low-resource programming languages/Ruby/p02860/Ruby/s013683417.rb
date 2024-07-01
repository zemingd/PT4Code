N = gets.to_i
S = gets.chomp
if N.odd?
  p 'No'
  exit
end
t = S.slice(0..(N / 2 - 1))
if t * 2 == S
  p 'Yes'
else
  p 'No'
end