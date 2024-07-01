n = gets.chomp.to_i
ans = 0
n0 = n/3
ans = n

def f(n,base)
  return n.to_s(base).split("").inject(0){|result,item| result += item.to_i}
end

x0,y0 =0,0

(0..n/2).each{|i|
  (0..n/3).each{|j|
    if 2*i+3*j ==n0 then
      x0,y0 = i,j
      break
    end
  }
      break if (x0>0 or y0>0)
    }

x,y = 0,0
pair =[]
(0..n).each{|k|
    x,y = x0+3*k, y0-2*k
    break if y<0
    n1 = f(x,6)
    n2 = f(y,9)
    ans = n1+n2  if n1+n2 <ans
}

ans += n%3
puts ans
