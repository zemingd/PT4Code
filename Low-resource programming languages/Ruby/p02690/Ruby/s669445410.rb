x = gets.chomp.to_i

[*0..119].each do |a|
  [*-119..119].each do |b|
    if a**5 - b**5 == x
      print("#{a} #{b}")
      exit 0
    end
  end
end

