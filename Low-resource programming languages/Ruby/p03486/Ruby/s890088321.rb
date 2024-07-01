io = STDIN
s=io.gets.chomp.chars.sort
t=io.gets.chomp.chars.sort
def check(s,t)
  if s.size < t.size
    t.join.include? s.join
  else
    s.min < t.max
  end
end
puts check(s,t) ? 'Yes' : 'No'
