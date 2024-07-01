n, k = gets.chomp.split
nums = gets.chomp.split.map(&:to_i)

use_nums = (0..9).to_a - nums

rank_up = false

n.each_char do |c|
  ci = c.to_i

  if rank_up
    print use_nums.min
  else
    use_nums.each do |un|
      if un < ci
        next 
      elsif un == ci
        print un
        break
      else
        print un
        rank_up = true
        break
      end
    end
  end
end

puts