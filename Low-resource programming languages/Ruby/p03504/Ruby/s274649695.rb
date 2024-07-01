io = STDIN
n,c=io.gets.split.map(&:to_i)
stc=[]
n.times do
  stc << io.gets.split.map(&:to_i)
end
last=[]
def machine(last,s,t,c)
  last.each_with_index do |(ss,tt,cc),i|
    if cc==c || tt<s
      last[i]=[s,t,c]
      return
    end
  end
  last << [s,t,c]
end
ar=stc.sort_by{|s,t,c|s}
last << ar.shift
ar.each do |s,t,c|
  machine(last,s,t,c)
end
puts last.size
