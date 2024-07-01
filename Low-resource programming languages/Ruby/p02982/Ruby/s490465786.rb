n,d=gets.split.map(&:to_i)
xs=n.times.map{gets.split.map(&:to_i)}
ans=0
xs.combination(2) do |arr1,arr2|
  dis=0
  d.times do |i|
    dis+=((arr1[i]-arr2[i]).abs)**2
  end
  check=false
  (dis+1).times do |i|
    if i**2==dis
      check=true
      break
    end
  end
  ans+=1  if check
end
puts ans
