x = gets.to_i
-1000.upto(1000) do |b|
  b.next.upto(1000) do |a|
    if x == a * a * a * a * a - b * b * b * b * b
      puts "#{a} #{b}"
      exit
    end
  end
end