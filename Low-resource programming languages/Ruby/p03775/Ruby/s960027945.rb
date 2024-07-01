class Integer
  def divisor_list
    return [1] if self == 1
    (1..Math.sqrt(self).to_i).select do |i|
      self%i == 0
    end.map {|e| [e, self/e]}.flatten.uniq.sort
  end
end
n=gets.to_i
puts n.divisor_list[n.divisor_list.size/2].to_s.size
