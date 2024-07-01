h,w=gets.split.map(&:to_i)
a=h.times.map{gets.chomp}
a.delete("."*w)
l=[false]*w
w.times do |j|
  a.each do |ai|
    if ai[j]=="#"
      l[j]=true
      break
    end
  end
end
b=[]
a.each do |ai|
  bb = []
  w.times do |j|
    bb << ai[j] if l[j]
  end
  b << bb.join
end
puts b