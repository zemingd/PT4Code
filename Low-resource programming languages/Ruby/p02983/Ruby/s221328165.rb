def main
  l, r = gets.chomp.split(' ').map(&:to_i)
  return 0 if l == 0

  candidate_nums = [*l..r]
  
  #  2019で割った余りが最小の数字同士の掛け算
  min = [2019, 2019]
  candidate_nums.each do |num|
    min << num % 2019
    break if num % 2019 == 0
    min.sort!.pop
  end
  
  min.inject(:*) % 2019
end

puts main