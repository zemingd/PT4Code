A,B,C,D,E,F = gets.split.map(&:to_i)

mx = -1 # 最大濃度
max_ws = 0
max_su = 0
33.times do |a|
  break if 100*A*a > F
  33.times do |b|
    break if 100*B*b > F
    s = (A*a + B*b) * E # 砂糖の最大値
    100.times do |c|
      break if C*c > s
      100.times do |d|
        su = C*c + D*d # 砂糖の量
        ws = 100*A*a + 100*B*b + su # 水+砂糖全体
        break if su > s
        break if ws > F
        if (mx < 100 * su / ws.to_f) # 濃度最大の時の質量と砂糖の量を記録
          mx = 100 * su / ws.to_f
          max_ws = ws
          max_su = su
        end
      end
    end
  end
end

puts "#{max_ws} #{max_su}"