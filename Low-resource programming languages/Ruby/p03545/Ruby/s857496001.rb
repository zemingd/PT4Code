A,B,C,D = gets.chomp.chars.map(&:to_i)

op = [?+,?-]

op.each do |i|
  op.each do |j|
    op.each do |k|
      if eval "#{A}#{i}#{B}#{j}#{C}#{k}#{D}==7"
        puts "#{A}#{i}#{B}#{j}#{C}#{k}#{D}=7"
        exit
      end
    end
  end
end