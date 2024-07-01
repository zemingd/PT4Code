##stack level too deep を疑ってみる。
##https://qiita.com/cielavenir/items/764ee9eb24b1cb43e588
##https://arc045.contest.atcoder.jp/submissions/526902

if !ENV['RUBY_THREAD_VM_STACK_SIZE']
	#require 'rbconfig';RUBY=File.join(RbConfig::CONFIG['bindir'],RbConfig::CONFIG['ruby_install_name'])
	require 'rubygems';RUBY=Gem.ruby
	exec({'RUBY_THREAD_VM_STACK_SIZE'=>'100000000'},RUBY,$0)
end

##ここまでコピペ

N = gets.to_i
@h = {}
@res = [nil, 0]

def f(i)
	@h[i].each do |x|
		next if !@res[x[0]].nil?
		@res[x[0]] = (@res[i] ^ x[1])&1
		f(x[0])
	end
end

a = $<.read.split.map(&:to_i).each_slice(3).flat_map { |u, v, w| [u, v, w, v, u, w] }
	.each_slice(3).map { |u, v, w| [u, [v, w]] }.sort

while a.size > 0 do
	k = a.bsearch_index { |x| a[0][0] < x[0] } || a.size
	@h[a[0][0]] = a[0,k].map(&:pop)
	a.shift(k)
end

f(1)
@res.shift
puts @res
