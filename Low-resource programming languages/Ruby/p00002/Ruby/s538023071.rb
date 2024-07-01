while t=gets do
    a,b=t.split.map(&:to_i)
    p (a+b).to_s.size
end