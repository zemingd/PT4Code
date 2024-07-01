io = STDIN
n=io.gets.chomp.to_i
$a={}
(1..n).each do |i|
  $a[i]=io.gets.chomp.to_i
end
$cnt = 1
$busy={}

def check(i)
  while $a[i]!=2
    $busy[i]=true
    $cnt += 1
    i=$a[i]
    return -1 if $busy[i]
  end
  $cnt
end
puts check(1)
