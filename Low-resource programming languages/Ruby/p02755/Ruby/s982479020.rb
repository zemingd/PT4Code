A,B = gets.split.map(&:to_i)

(1..100).each do |i|
  if (i * 0.08).floor == A
    if (i * 0.1).floor == B
      puts i
      exit
    end
  end
end
puts -1