N, K = gets.split.map(&:to_i)
S = gets.chomp.chars

nums = [N] + S.zip(['a'] + S, [*0...S.size]).select{|a, b, _| a != b}.map{|_, _, i| i}.reverse

Nums = nums.zip(nums.drop(1) + [0]).map{|i, j| i - j}.reverse

top = Nums.take(2*K + 1).inject(0, :+)
STDERR.puts "top: #{top}"
tmp = [top] + Nums.drop(2*K + 1).zip(Nums).map{|i, j| top += i - j}

STDERR.puts "tmp: #{tmp}"
Sums = if S[0] == "0" then
           tmp.zip([*0...tmp.size]).select{|i, j| j.even? }.map{|i, _| i}
       else
           tmp.zip([*0...tmp.size]).select{|i, j| j.odd? }.map{|i, _| i}
       end

STDERR.puts "Sums: #{Sums}"

p (Sums + [Nums.max]).max
