n,y = gets.chomp.split.map(&:to_i)

set = '-1 -1 -1'

(0..n).each do |a|
  (0..n).each do |b|
    (0..n).each do |c|
      set = "#{a} #{b} #{c}" if 10000*a + 5000*b + 1000*c == y
    end
  end
end

puts set
