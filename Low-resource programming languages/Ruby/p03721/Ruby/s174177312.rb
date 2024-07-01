_, k, *ab = `dd`.split.map{|t|t.to_i}

sz = 0

m = [0] * (10**5+1)

ab.each_slice(2){|(a,b)| m[a] += b }

m.each_with_index do |b,i|
  
  sz += b
  if k <= sz
    puts i
    exit
  end
end