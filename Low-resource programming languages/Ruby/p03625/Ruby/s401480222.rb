N = gets.to_i
a = gets.split.map(&:to_i).sort.reverse.group_by(&:itself).reject {|k,v| v.size <= 1 }
f = false
t = 0
a.each do |k,v|
  if !f && v.size >= 4
    p k*k
    exit
  elsif t.zero?
    f = true
    t = k
  else
    p t*k
    exit
  end
end
p 0
