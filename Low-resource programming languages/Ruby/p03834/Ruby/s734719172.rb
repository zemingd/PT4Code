def saiki(x,md,d,fx,fd)
  fd.push(x)
  ans = 0
    $keiro[x].each do |xx|
      return ans + 0 if(d > md)
      if(xx[0] == fx)
        if(d + xx[1] < md)
          return ans + 1
        else
          return ans
        end
      else
      ans += saiki(xx[0],md,d+xx[1],fx,fd)
      end
    end
  return ans
end
ans = 0
$h = {}
n,k = gets.chomp.split(" ").map(&:to_i)
a = []
$keiro = Array.new(n+1){Array.new(0)}
k.times do
  b = (gets.chomp.split(" ").map(&:to_i))
  $keiro[b[0]].push([b[1],b[2]])
  $keiro[b[1]].push([b[0],b[2]])
  a.push(b)
end
a.each do |aa|
 ($keiro[aa[0]].sort{|a,b|a[1] <=> b[1]})
 next if($keiro[aa[0]][0][1] == aa[1])
 if(saiki(aa[0],aa[2],0,aa[1],[]) > 0)
 ans += 1
 end
end
puts ans