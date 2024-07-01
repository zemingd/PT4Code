def main
  # b**p <= 1000
  # の場合、最大の b は31

  base_nums = (1..31).to_a

  lim = ARGF.gets.to_i
  # puts("Error") if n <= 0

  max_num = 1
  base_nums.each do |n|

    2.upto(10) do |p|
      cur = n**p
      break if lim < cur

      if max_num < cur
        max_num = cur
      end
    end
  end

  puts max_num
end

if __FILE__ == $0
  main
end
