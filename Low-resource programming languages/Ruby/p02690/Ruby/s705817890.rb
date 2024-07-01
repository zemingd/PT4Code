X = gets.to_i
 
-999.upto(1000) do |a|
  -1000.upto(a) do |b|
    if X == a ** 5 - b ** 5
      print "#{a} #{b}"
      exit
    end
  end
end