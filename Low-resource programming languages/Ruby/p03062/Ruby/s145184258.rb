def main
  n = gets.to_i
  a = gets.split.map(&:to_i)

  if a.count { |x| x < 0 } % 2 == 0
    p a.map { |x| x.abs }.inject(:+)
  else
    min = a.min_by { |x| x.abs }
    p a.map { |x| x.abs }.inject(:+) - min*2;
  end
end

main
