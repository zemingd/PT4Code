xyz = gets.split.map(&:to_i)

class Array
  def swap_diy(a, b)
    self.map.with_index do |num, i| 
      if i+1 == a
        self[b-1]
      elsif i+1 == b
        self[a-1]
      else
        num
      end
    end
  end
end

puts xyz.swap_diy(1,2).swap_diy(1,3).join(" ")
