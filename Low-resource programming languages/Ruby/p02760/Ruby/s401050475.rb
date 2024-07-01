l = []
3.times do
  l << gets.split(' ').map(&:to_i)
end

n = gets.to_i
b = []
n.times do
  b = gets.to_i
  l.each_with_index do |v,i|
    3.times do |ii|
      if v[ii] == b
        l[i][ii] = 'x'
        next
      end
    end
  end
end

if l[0].count('x') == 3 or l[1].count('x') == 3 or l[2].count('x') == 3 \
   or (l[0][0] == 'x' and l[1][1] == 'x' and l[2][2] == 'x') \
   or (l[0][2] == 'x' and l[1][1] == 'x' and l[0][2] == 'x') \
   or (l[0][0] == 'x' and l[1][0] == 'x' and l[2][0] == 'x') \
   or (l[0][1] == 'x' and l[1][1] == 'x' and l[2][1] == 'x') \
   or (l[0][2] == 'x' and l[1][2] == 'x' and l[2][2] == 'x')
  puts 'Yes'
else
  puts 'No'
end
