require 'prime'
gets
as=(gets.split.map &:to_i).sort!
res=[]
as.each_with_index do |a,i|
  next if as.select{|b|b==a}.size>1
  if i==0 || a.prime?
    res << a 
  else
    mod=[]
    as[0..i-1].each do |n|
      mod << a%n
    end
    res << a unless mod.include?(0)
  end
end
p res.size
