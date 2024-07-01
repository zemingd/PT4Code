human_num, init_point, ans_public = gets.chomp.split(' ').map(&:to_i)

correct_persons = []
ans_public.times { |_i| correct_persons << gets.chomp.to_i }

correct_group = correct_persons.group_by{|cp| cp}
[*1..human_num].each do |human|
  ans_myself = correct_group[human]&.size.to_i
  if ans_public - ans_myself >= init_point
    puts 'No'
  else
    puts 'Yes'
  end
end