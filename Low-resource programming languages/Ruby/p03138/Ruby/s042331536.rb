def xxor n, k, a
  k2 = k.to_s(2)
  a2 = a.map{|x| x.to_s(2).rjust(k2.length, '0').slice(-k2.length .. -1)  }
  
  b = Array.new(k2.length, 0)
  (0...k2.length).each do |i|
    a2.each do |x|
      b[i] += x[i].to_i
    end
  end
  
  b2 = b.map{|x| x > n/2 ? '0' : '1' }.join('')
  x = [b2.to_i(2), k].min
  
  a.map{|aa| x^aa}.inject(:+)
end

n, k = gets.chomp.split(' ').map{|x| x.to_i }
a = gets.chomp.split(' ').map{|x| x.to_i }

puts xxor(n, k, a)
