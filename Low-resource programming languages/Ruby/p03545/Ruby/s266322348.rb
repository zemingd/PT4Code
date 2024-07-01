A, B, C, D = gets.chomp.chars.map(&:to_i)

0.upto(1) do |i|
  0.upto(1) do |j|
    0.upto(1) do |k|
      sum = A
      sum += i == 1 ? -B : B
      sum += j == 1 ? -C : C
      sum += k == 1 ? -D : D
      if sum == 7
        puts "#{A}#{i == 1 ? '-' : '+'}#{B}#{j == 1 ? '-' : '+'}#{C}#{k == 1 ? '-' : '+'}#{D}=7"
        exit
      end
    end
  end
end
