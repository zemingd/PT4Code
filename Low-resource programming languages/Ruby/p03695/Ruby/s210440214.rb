n=gets.to_i
a=$<.read.split.map{|x|x.to_i/400}
s=a.select{|x|x<8}.uniq.size
t=a.select{|x|x>7}.size
if(s==0)
  puts "#{n} #{n}"
else
  puts "#{s} #{s+t}"
end
