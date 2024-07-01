def solve(arr)
  return 0 if arr.uniq.size == 1

  mode = arr.group_by{|e| e}.max_by{|_,v| v.size}.first
  return arr.count{|x| x != mode}
end

n = gets.to_i
v = gets.chomp.split(" ").map(&:to_i)
ve = v.select.with_index {|e,i| i%2==0}
vo = v.select.with_index {|e,i| i%2==1}

if v.uniq.size == 1
  puts n/2
  exit
end

ve_group = ve.group_by{|e| e}
ve_mode = ve_group.max_by{|_,v| v.size}.first

vo_group = vo.group_by{|e| e}
vo_mode = vo_group.max_by{|_,v| v.size}.first

if ve_mode == vo_mode
  if ve.uniq.size == 1
    count = vo.count{|x| x != vo_group.sort_by{|_,v| v.size}[-2].first} + ve.count{|x| x != ve_mode}
  elsif vo.uniq.size == 1
    count = ve.count{|x| x != ve_group.sort_by{|_,v| v.size}[-2].first} + vo.count{|x| x != vo_mode}
  else
    count = [ve.count{|x| x != ve_group.sort_by{|_,v| v.size}[1].first} + vo.count{|x| x != vo_mode},
             vo.count{|x| x != vo_group.sort_by{|_,v| v.size}[1].first} + ve.count{|x| x != ve_mode}].min
  end
else
  count = ve.count{|x| x != ve_mode} + vo.count{|x| x != vo_mode}
end

puts count
