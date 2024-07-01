a, b, c, d = gets.chomp.chars.map(&:to_i)
op = ['+','-']

op.each do |i|
  op.each do |j|
    op.each do |k|
      if eval "#{a}#{i}#{b}#{j}#{c}#{k}#{d}==7"
        puts "#{a}#{i}#{b}#{j}#{c}#{k}#{d}==7"
        break
      end
    end
  end
end