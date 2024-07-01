# https://atcoder.jp/contests/abc147/tasks/abc147_c

N = gets.to_i
As = Array.new(N) { Array.new(N, '.') }
N.times do |i|
  k = gets.to_i
  k.times do |j|
    x, y = gets.chomp.split
    As[i][x.to_i - 1] = y
  end
end
ps = As.map { |a| /#{a.join}/ }

S = 1 << N
ans = 0
S.times do |s|
  ng = false
  h = 0
  q = s.to_s(2).rjust(N, '0')
  ps.each_with_index do |p, i|
    # p([q, p.source, i])
    if q[i] == '1'
      if q =~ p
        h += 1
        # puts "honest"
      else
        # puts "ng"
        ng = true
        break
      end
    else
      # puts "unkind"
    end
  end
  next if ng
  ans = [ans, h].max
end

puts ans
