class Integer
  def combination
    n = self
    r = 0
    (0..9).each do |a|
      (0..9).each do |b|
        (0..9).each do |c|
          (0..9).each do |d|
            if a + b + c + d == n
              r += 1
              break
            end
          end
        end
      end
    end
    r
  end
end

while line = gets
  puts line.chomp.to_i.combination
end