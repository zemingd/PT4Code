n,y=gets.chomp.split(' ').map(&:to_i)
a,b,c=-1,-1,-1;
(0..n).each do |i|
  (0..(n-i)).each do |j|
    k=n-i-j
    if 10000*i+5000*j+1000*k==y then
      a=i
      b=j
      c=k
    end
  end
end
puts "#{a} #{b} #{c}"