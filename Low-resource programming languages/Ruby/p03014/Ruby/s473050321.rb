$H,$W=gets.chomp.split.map(&:to_i)
$map=$H.times.map { gets.chomp.chars }
$sum=0
ans=0

def a(j,i)
  return if i>=$W || i<0 || j>=$H || j<0
  return if $map[j][i]=="#"
  $sum+=1
  a(j-1,i)
end

def b(j,i)
  return if i>=$W || i<0 || j>=$H || j<0
  return if $map[j][i]=="#"
  $sum+=1
  b(j,i-1)
end

def c(j,i)
  return if i>=$W || i<0 || j>=$H || j<0
  return if $map[j][i]=="#"
  $sum+=1
  c(j+1,i)
end

def d(j,i)
  return if i>=$W || i<0 || j>=$H || j<0
  return if $map[j][i]=="#"
  $sum+=1
  d(j,i+1)
end

$W.times do |i|
  $H.times do |j|
    next if $map[j][i]=="#"
    $sum=1
    a(j-1,i)
    b(j,i-1)
    c(j+1,i)
    d(j,i+1)
    ans=$sum if ans<$sum
  end
end
puts ans