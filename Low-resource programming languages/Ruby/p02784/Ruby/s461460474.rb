line = $stdin.gets
hp = line.split(' ').map{|s| s.to_i}[0]

line = $stdin.gets
attack_list = line.split(' ').map{|s| s.to_i}


if hp <= attack_list.sum
  puts 'Yes'
else
  puts 'No'
end
