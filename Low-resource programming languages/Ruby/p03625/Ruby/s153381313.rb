N = gets.to_i
M = gets.split.map(&:to_i).group_by(&:itself)
    .map{|k,v| [k,v.size]}
    .select{|k,z| z >= 2 }
    .max_by(2){|k,z| k }

if M.empty?
  puts 0
elsif M.size == 1 
  if M[0][1] >= 4
    puts M[0][0] ** 2
  else
    puts 0
  end
else
  if M[0][1] >= 4
    puts M[0][0] ** 2
  else
    puts M[0][0] * M[1][0]
  end
end
