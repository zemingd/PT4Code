an, bn = gets.split.map(&:to_i)

gets.chomp.tap do |s|
  if s.count("-") == 1
    a, b = s.split("-")
    if a.length == an && b.length == bn
      puts "Yes"
      exit
    end
  end
  puts "No"
end