io = STDIN
n,m,c=io.gets.split.map(&:to_i)
br=io.gets.split.map(&:to_i)
def calc(br,ar,c)
  sum=br.zip(ar).inject(0) do |s,(b,a)|
    s+(a*b)
  end
  sum+c>0
end

cnt=0
n.times.each do
  ar=io.gets.split.map(&:to_i)
  cnt+=1 if calc(br,ar,c)
end
puts cnt
