N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.push(2**19)

k = 0
q = false
$<.read.split.map(&:to_i).each_slice(2).to_a.sort_by{|x|-x[1]}.each do |b, c|
  
	break if k == N
	b.times do
		if a[k] < c
			a[k] = c
		else
		  q = true
			break
		end
		k+=1
		break if k==N
	end	
	break if q
end

a.pop
p a.inject(:+)