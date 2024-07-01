A, B, C, D = gets.chomp.chars.map(&:to_i)
op = ['+', '-']
(0..1).each do |aop|
  ab = aop == 0 ? A + B : A - B
  (0..1).each do |bop|
    abc = bop == 0 ? ab + C : ab - C
    (0..1).each do |cop|
      abcd = cop == 0 ? abc + D : abc - D
      if abcd == 7
        puts "#{A}#{op[aop]}#{B}#{op[bop]}#{C}#{op[cop]}#{D}=7"
        exit
      end
    end
  end
end
