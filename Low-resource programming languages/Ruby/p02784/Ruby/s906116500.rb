line = $stdin.gets
hp = line.split(' ').map{|s| s.to_i}[0]

line = $stdin.gets
attack_list = line.split(' ').map{|s| s.to_i}

ans = false
attack_list.each do |a|
  hp -= a
  if hp <= 0
    ans = true
    break
  end
end

if ans
  puts 'Yes'
else
  puts 'No'
end
