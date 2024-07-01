n,m=gets.split.map(&:to_i)
requests=m.times.map{gets.split.map(&:to_i)}
requests.sort!{|(a1,b1),(a2,b2)|
  b1==b2 ? a1<=>a2 : b1<=>b2
}

ans=0
destroy=-1
requests.each{|a,b|
  if destroy<a
    ans+=1
    destroy=b-1
  end
}
puts ans