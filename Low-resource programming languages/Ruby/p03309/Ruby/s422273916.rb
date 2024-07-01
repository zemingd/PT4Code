def main
  n = gets.chomp.to_i
  list = gets.chomp.split(' ').map(&:to_i)
  solve(list)
end

def solve(list)
  min_val = 99999999999

  m = list.max
  (-m..m).to_a.each do |b|
    val = 0
    list.each_with_index do |el, i|
      val += (el - (b + i + 1)).abs
    end
    min_val = val if min_val > val
  end
  puts min_val
end

main if $0 == __FILE__