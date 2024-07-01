def solve(arr)
  return 0 if arr.uniq.size == 1

  mode = arr.group_by(&:itself).max_by{|_,v| v.size}.first
  return arr.count{|x| x != mode}
end

n = gets.to_i
v = gets.chomp.split(" ").map(&:to_i)
ve = v.select.with_index {|e,i| i%2==0}
vo = v.select.with_index {|e,i| i%2==1}

count = solve(ve) + solve(vo)
puts (v.uniq.size == 1) ? ve.size : count