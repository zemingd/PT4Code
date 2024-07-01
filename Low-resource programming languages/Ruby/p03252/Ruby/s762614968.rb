s = gets.chomp!.split('')
t = gets.chomp!.split('')
s_dup = s.inject({}) do |h, val|
  h[val] = 0 unless h.keys.include? val
  h[val] += 1
  h
end
t_dup = t.inject({}) do |h, val|
  h[val] = 0 unless h.keys.include? val
  h[val] += 1
  h
end
s_dup = s_dup.to_a.sort{|a, b| a[1] <=> b[1]}.select{|val| val[1] >= 2 }
t_dup = t_dup.to_a.sort{|a, b| a[1] <=> b[1]}.select{|val| val[1] >= 2 }
def check(s_, t_)
  if s_.length == t_.length
    s_ = s_.map{ |val| val[1] }
    t_ = t_.map{ |val| val[1] }
    if s_ == t_
      return true
    else
      return false
    end
  end
  return false
end
if s.uniq.length == t.uniq.length
  if check(s_dup, t_dup)
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end