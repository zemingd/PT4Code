s=gets.chomp
t=gets.chomp
z=s.size
a=0
n=-1
m=0
t.each_char do |tt|
  if s.index(tt,n+1)
    m=s.index(tt,n+1)
    a+=m-n
    n=m
  elsif s.index(tt)
    m=s.index(tt)
    a+=m-n+z
    n=m
  else
    puts "-1"
    exit
  end
end
puts a
