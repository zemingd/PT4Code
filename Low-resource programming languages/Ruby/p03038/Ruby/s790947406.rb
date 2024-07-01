io = STDIN
n,m=io.gets.split.map(&:to_i)
a=io.gets.split.map(&:to_i).sort
bc=m.times.map{io.gets.split.map(&:to_i)}.sort_by{|b,c|-c}
i=0
add=0
bc.each do |b,c|
next if a[i]>=c
b.times do
  break if a[i]>=c
    add+=c-a[i]
    i+=1
  end
  break if i>=n
end
puts a.inject(:+)+add
