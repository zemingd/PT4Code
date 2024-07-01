_, k, *ary = `dd`.split.map{|t|t.to_i}

sz = 0
ary.each_slice(2).sort.each do |(a,b)|
  
  sz += b
  if k <= sz
    puts a
    exit
  end
end

  
  