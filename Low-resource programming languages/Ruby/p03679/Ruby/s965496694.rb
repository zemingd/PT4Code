io = STDIN
x,a,b=io.gets.chomp.split.map(&:to_i)
if b<a+x+1
  if b<=a
    puts 'delicious'
  else
    puts 'safe'
  end
else
  puts 'dangerous'
end
