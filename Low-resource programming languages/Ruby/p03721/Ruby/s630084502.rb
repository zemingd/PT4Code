n,k=gets.split.map(&:to_i)
ab=[]
n.times do
  ab << gets.split.map(&:to_i)
end
ab.sort!
c=0
ab.each do |a,b|
  c+=b
  if k<=c
    puts a
    exit
  end
end
