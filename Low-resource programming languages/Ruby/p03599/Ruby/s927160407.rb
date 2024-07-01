# https://beta.atcoder.jp/contests/abc074/tasks/arc083_a
# C - Sugar Water
A, B, C, D, E, F = gets.chomp.split(" ").map(&:to_i)
# 100*A gの水
# 100*B gの水
# C gの砂糖
# D gの砂糖
# E g/100ml溶ける
# F gの最大質量
#print("A:#{A} B:#{B} C:#{C} D:#{D} E:#{E} F:#{F}\n")

# 溶ける場合の濃度を計算
def calc_concentration(water, sugar)
  if water != 0 && E*water/100 >= sugar
    100*sugar/(water+sugar).to_f
  end
end

# [[砂糖水の質量, 砂糖の質量, 濃度],[],...]
concentrations = []
#print("A:#{F/(100*A)}杯まで wB:#{(F)/(100*B)+1}杯まで sC:#{(F)/C+1}杯まで sD:#{(F)/D+1}杯まで\n")

# カップAで入れられる回数は F/100*A+1 回まで
(F/(100*A)+1).times do |water_a|
  # カップBで入れられる回数は (F-100*A*water_a)/100*B+1 回まで
  ((F-100*A*water_a)/(100*B)+1).times do |water_b|
    # カップCで入れられる回数は(F-100*A*water_a-100*B*water_b)/C+1 回まで
    ((F-100*A*water_a-100*B*water_b)/C+1).times do |sugar_c|
      # カップDで入れられる回数は (F-100*A*water_a-100*B*water_b-C*sugar_c)/D+1 回まで
      ((F-100*A*water_a-100*B*water_b-C*sugar_c)/D+1).times do |sugar_d|
        # print("wA:#{water_a} wB:#{water_b} sC:#{sugar_c} sD:#{sugar_d}\n")
        if !calc_concentration(100*A*water_a + 100*B*water_b, sugar_c*C+sugar_d*D).nil?

          concentrations << [water_a*A*100+water_b*B*100+sugar_c*C+sugar_d*D, sugar_c*C+sugar_d*D, calc_concentration(100*A*water_a + 100*B*water_b, sugar_c*C+sugar_d*D)]
        end
      end
    end
  end
end
#p concentrations
max_concentration = concentrations.max{|ary_a, ary_b| ary_a[2] <=> ary_b[2]}
print("#{max_concentration[0]} #{max_concentration[1]}")
