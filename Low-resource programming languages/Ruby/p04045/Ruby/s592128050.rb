# https://abc042.contest.atcoder.jp/tasks/arc058_a
N, _ = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)
use_char = [0,1,2,3,4,5,6,7,8,9]-ary

# nはmax10**4なので99999までやればよい
ans = Float::INFINITY
use_char.each do |a|
  tmp = a
  if tmp >= N
    ans = [ans,tmp].min
  end
  use_char.each do |b|
    tmp = a+10*b
    if tmp >= N
      ans = [ans,tmp].min
    end
    use_char.each do |c|
      tmp = a+10*b+100*c
      if tmp >= N
        ans = [ans,tmp].min
      end
      use_char.each do |d|
        tmp = a+10*b+100*c+1000*d
        if tmp >= N
          ans = [ans,tmp].min
        end
        use_char.each do |e|
          tmp = a+10*b+100*c+1000*d+10000*e
          if tmp >= N
            ans = [ans,tmp].min
          end
        end
      end
    end
  end
end
puts ans
