n, k = gets.chomp.split
nums = gets.chomp.split.map(&:to_i)

use_nums = (0..9).to_a - nums

rank_up = false

ans = []
n.each_char do |c|
  ci = c.to_i

  if rank_up
    ans << use_nums.min
  else
    found = false
    use_nums.each do |un|
      if un < ci
        next 
      elsif un == ci
        ans << un
        found = true
        break
      else
        ans << un
        found = true
        rank_up = true
        break
      end
    end
    unless found
      min = use_nums.min
      head = if min == 0
              use_nums[1]
            else
              min
            end

      if ans.size == 0
        ans << head
      else
        next_min = use_nums.select{|un| ans.last < un}.min
        ans[ans.size-1] = next_min
      end

      ans << min
      rank_up = true
    end
  end
end

puts ans.join