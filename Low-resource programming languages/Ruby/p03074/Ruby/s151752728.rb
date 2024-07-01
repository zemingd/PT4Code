(_,k)=gets().split.map(&:to_i);
s=gets().chomp()
aa= s.scan(/(1*)(?=((0+1*){#{k}}))/)
p (aa==[] ? s.size() : aa.map{|a| a[0].size+a[1].size}.max)