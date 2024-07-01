k, s = gets.chomp.split(" ").map(&:to_i)
count = 0

(0..k).each do |x|
  (0..k).each do |y|
    (0..k).each do |z|
      if x + y + z == s
        count += 1
      end
    end
  end
end

p count