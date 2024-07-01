N, @K = gets.chomp.split.map(&:to_i)

summary = 0

def double(n, count = 0)
  return count if n > @K
  double(n * 2, count + 1)
end

(1..N).each do |dice|
  summary += if dice >= @K
               1.0
             else
               ((1.0 / 2)**double(dice))
             end
end

printf("%.12f\n", summary / N)