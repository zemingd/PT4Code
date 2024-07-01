a=gets.chomp.chars
array=[]
a.each do |n|
  if n=="B"
    array.pop
  else
    array<<n
end
puts array.join
