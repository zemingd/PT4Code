  a,b,c=$stdin.gets.split.map(&:to_i)
  j=[]
  a.upto(b) do |n|
    j<<n if c%n==0
  end
  puts j.size
