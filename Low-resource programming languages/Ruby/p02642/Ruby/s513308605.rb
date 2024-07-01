class Heap
def initialize(&c);@c,@a=c||:<=>.to_proc,[];end
def push(*s);s.each{|x|i=@a.size;j=i-1>>1;@a<<x;until i==0||@c[@a[j],@a[i]]<0;@a[j],@a[i],i,j=@a[i],@a[j],j,j-1>>1;end};self;end
alias_method :<<,:push
def shift;r,x,i,n=@a[0],@a.pop,0,@a.size;loop{j=i*2+1;return r if j>=n;a=@c[@a[i],@a[j]];if(k=j+1)<n;if a>0;j=k if @c[@a[j],@a[k]]>0;elsif @c[@a[i],@a[k]]>0;j=k;else;break;end;@a[j],@a[i],i=@a[i],@a[j],j;else;@a[j],@a[i],i=@a[i],@a[j],j if a>0;break;end};r;end
def [](i);@a[i];end
end

n = gets.to_i
as = Heap.new
gets.split.each do |a|
	as.push a.to_i
end

count = 0
n.times do |i|
	a = as[i]
	ok = true
	i.times do |j|
		ok = false if a % as[j] == 0
	end
	ok = false if a == as[i + 1]
	count += 1 if ok
end

p count