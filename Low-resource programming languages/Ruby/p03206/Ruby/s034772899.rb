int   = STDIN.gets.to_i
array = []
array << 'Christmas'
(25 - int).times do 
  array << 'Eve'
end
print array.join(' ')