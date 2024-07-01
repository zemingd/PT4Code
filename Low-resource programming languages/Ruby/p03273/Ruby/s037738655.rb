h,w=gets.split.map(&:to_i)
a,t=[],Array.new(w,0)
h.times{|i|
  aa=gets.split('')
  if aa.include?('#') then
    aa.each_with_index{|at,j|
      t[j]+=1 if at=='#'
    }
    a.push(aa)
  end  
}
a.size.times{|i|
  w.times{|j|
    print a[i][j] if t[j]!=0
  }
  puts ''
}