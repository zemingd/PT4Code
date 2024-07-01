N = gets.chomp.to_i
Ps = gets.chomp.split(" ").map(&:to_i)
count =0
befo = 0
nextnum = 0

Ps.each_with_index do |e,i|
  if i == 0
    befo = Ps[i]
  	nextnum = Ps[i+2]
  elsif i == N-1
    next
  elsif (befo<e&&e<nextnum)||(befo>e&&e>nextnum)
      count += 1
      befo == e
	  nextnum == Ps[i+2]
  end
end

puts count