A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

aaa = [ X / 500, A ].min
bbb = [ X / 100, B ].min
ccc = [ X / 50, C ].min

count = 0
(aaa+1).times do |a|
  (bbb+1).times do |b|
    (ccc+1).times do |c|
      if (500 * a) + (100 * b) + (50 * c) == X
        count += 1
      end
    end
  end
end

p count