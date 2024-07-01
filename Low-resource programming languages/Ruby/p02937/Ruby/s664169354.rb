s=gets.chomp
l=s.size
A=?a.ord
next_pos=Array.new(l){Array.new(26)}
ss=s+s
ss.bytes.each_with_index{|b,i|
  n=b-A
  ([i-1,l-1].min).downto(0){|j|
    break if next_pos[j][n]
    next_pos[j][n]=i
  }
}

ans=0
pos=0
t=gets.chomp
t.bytes{|b|
  n=b-A
  np=next_pos[pos][n]
  unless np
    puts -1
    exit
  end
  ans+=np-pos
  pos=np%l
}

puts ans+1