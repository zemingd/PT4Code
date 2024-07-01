x,t,z,k = gets.split.map(&:to_i)
a,b,c = 3.times.map{ gets.split.map(&:to_i).sort }
ab = []
a.each{ |a|
    b.each do |b| ab << a+b end
}
ab.sort!.reverse!
abc = []
ab[0..k-1].each{ |ab|
    c.each do |c| abc << ab+c end
}
puts abc.sort[abc.size-k..-1].reverse