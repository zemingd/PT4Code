H, A= gets.chop.split.map(&:to_i)

if H <= A
  puts "1"
elsif H > A
  if  H % A == 0
    puts H / A
  else
    puts H % A + 1
  end
end