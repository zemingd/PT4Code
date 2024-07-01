n=gets.to_i
a=1/0.0
(n/9).downto(0) do |n9|
  m=n-n9*9
  (m/6).downto(0) do |m6|
    c=m-m6*6
    next if c>=a
    nn9=n9
    while nn9>0
      c+=nn9%9
      nn9/=9
    end
    next if c>=a
    while m6>0
      c+=m6%6
      m6/=6
    end
    a=c if c<a
  end
end
puts a
