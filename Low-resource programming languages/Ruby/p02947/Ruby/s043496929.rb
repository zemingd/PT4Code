N = gets.strip.to_i
ABS = readlines.map {|line| line.strip}
ABS.each_with_index do |str, index|
  ABS[index] = str.split('').sort.join('')
end

class Integer
  def combination(k)
    return 1 if k.zero?
    (self - k + 1..self).inject(:*) / k.factorial
  end
  
  def factorial
    return 1 if self.zero?

    (1..self).inject(:*)
  end
end
count = 0
ABS.group_by{ |e| e }.each do |k,v|
  count += v.size.combination(2)
end

puts count