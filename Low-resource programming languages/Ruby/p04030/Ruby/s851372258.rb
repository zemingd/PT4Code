a=gets.chomp.split("")
answer=[]
a.each do |n|
  if n=="B"
    answer.pop
  else
    answer << n
  end
end
puts answer.join