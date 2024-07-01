a=[];gets.chomp.chars.each{|i|
if i==?B
  a=a[0,a.size-1] if a.size!=0
else
  a<<i
end
};puts a.join