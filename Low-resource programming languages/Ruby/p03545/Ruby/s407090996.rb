A, B, C, D = gets.split('').map(&:to_i)
op = Array.new(3)
(1 << 3).times do |i|
  3.times do |j|
    if i >> j & 1 == 1
      op[j] = "+"
    elsif i >> j & 1 == 0
      op[j] = "-"
    end
  end
  if eval("#{A}#{op[0]}#{B}#{op[1]}#{C}#{op[2]}#{D}==7")
    puts "#{A}#{op[0]}#{B}#{op[1]}#{C}#{op[2]}#{D}=7"
    exit
  end
end