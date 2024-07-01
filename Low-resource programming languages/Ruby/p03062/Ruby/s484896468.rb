gets
a=gets.split.map &:to_i
n=a.count{|x|x<0}
z=a.count{|x|x==0}
if n%2==1&&z==0
	b=a.map(&:abs)
	p b.reduce(:+)-b.min*2
else
	b=a.map(&:abs)
	p b.reduce(:+)
end