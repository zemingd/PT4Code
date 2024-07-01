N = gets.to_i
a = gets.split.map(&:to_i)

(0..(N-1)).each do |i|
  if a[i].even?
    if a[i] % 3 != 0 && a[i] % 5 != 0
      puts "DENIED"
      exit
    end
  end
end
puts "APPROVED"
