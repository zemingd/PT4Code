class Array
  def uniq?
    return true if size <= 1
    s = sort
    x = s[-1] 
    s.each do |a|
      return false if x == a
      x = a
    end
    return true
  end
end

n = gets.to_s.to_i
a = gets.to_s.split.map{|i|i.to_i}

puts a.uniq? ? "YES" : "NO"