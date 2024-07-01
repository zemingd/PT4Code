=begin
－－－－－－－－－－－－－－ 
A = 100*A 水
B = 100*B 水
C,D = １回の投入可能砂糖量
E = 100(g)あたりに溶かすことのできる砂糖量
F = ビーカー許容量(水 + 砂糖 = 総質量)
sugar = F 質量内でできる砂糖の質量を格納(Ci + Dj を組み合わせてできる質量の列挙)
water = F 質量内でできる水の質量を格納(100Ai + 100Bjの組み合わせでできる質量の列挙)
sum = water[i]とsugar[j]の総質量
pos = water[i] に溶かせる砂糖量
con = sugar[j]*100 / (sugar[j] + water[i])  の砂糖濃度(%)
ans = 答え
－－－－－－－－－－－－－－
=end

A,B,C,D,E,F = gets.split.map(&:to_i);

water = [];
(0..30).each do |i|
  (0..30).each do |j|
    x = (100*A*i) + (100*B*j);
    water << x if x <= F;
  end
end
# water.sort!.uniq!;

sugar = []
(0..100).each do |i|
  (0..100).each do |j|
    y = C * i + D * j;
    sugar << y if y <= F;
  end
end
# sugar.sort!.uniq!;

sum_ans = 0;
sugar_ans = 0;
dif = -1;
con = 0.0;

water.each do |w|
  sugar.each do |s|
    sum = w + s;
    pos = w / 100 * E;
    next if pos < s || F < sum

    con = (s*100) / (s + w).to_f;
    if dif < con
      sum_ans = sum;
      sugar_ans = s;
      dif = con;
    end
  end
end

puts "#{sum_ans} #{sugar_ans}"