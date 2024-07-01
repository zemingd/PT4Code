# Your code here!
def del(i,j)
  return if $t[i][j] == "."
  $t[i][j] = "."
  del(i-1,j) if(i > 0)
  del(i,j-1) if(j > 0)
  del(i+1,j) if(i < $h-1)
  del(i,j+1) if(j < $w-1)
end
def jud(i,j)
  return if(i > 0 and $t[i-1][j] == "#")
  return if(j > 0 and $t[i][j-1] == "#")
  return if(i < $h-1 and $t[i+1][j] == "#")
  return if (j < $w-1 and $t[i][j+1] == "#")
  puts "No"
  exit
end
h,w = gets.chomp.split.map &:to_i
$h,$w = h,w
$t = []
h.times do
  $t << gets.chomp.split("")
end
h.times do |i|
  w.times do |j|
    if($t[i][j] == "#")
      jud(i,j)
      del(i,j)
    end
  end
end
p $t
puts "Yes"