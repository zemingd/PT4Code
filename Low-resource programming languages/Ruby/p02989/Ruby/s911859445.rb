io = STDIN
n=io.gets.to_i
d=io.gets.split.map(&:to_i).sort
if n.odd?
  puts 0
else
  abc=d[0,n/2]
  arc=d[n/2,n/2]
  puts arc[0]-abc[-1]
end
