n, k = gets.chomp.split
nums = gets.chomp.split.map(&:to_i)

use_nums = (0..9).to_a - nums

rank_up = false

n.each_char do |c|
  ci = c.to_i

  if rank_up
    print use_nums.min
  else
    found = false
    use_nums.each do |un|
      if un < ci
        next 
      elsif un == ci
        print un
        found = true
        break
      else
        print un
        found = true
        rank_up = true
        break
      end
    end
    unless found
      min = use_nums.min
      if min == 0
        print use_nums[1]
      else
        print min
      end

      print min
      rank_up = true
    end
  end
end

puts