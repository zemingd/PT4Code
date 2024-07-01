n=gets.to_i
w=[]
n.times do
  w << gets.chomp.split('')
end
for i in 1..n-1 do
  if w[i][0] == w[i-1][-1] then
    for j in 0..i-1 do
      if w[j] == w[i]
        puts 'No'
        return
      end
    end
  else
    puts 'No'
    return
  end
end
puts 'Yes'