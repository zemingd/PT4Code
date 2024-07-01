io = STDIN
a,b,c,d=io.gets.split.map(&:to_i)
if b<c || a>d
  puts 0
elsif
  puts ([b,d].min-[a,c].max).abs
end
