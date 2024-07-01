n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

circles = a.permutation(n).lazy.take(n - 1).map {|p| RingArray.new(p)}

answer = "No"

circles.each do |circle|
  n.times do |i|
    if circle[i + 1] != (circle[i] ^ circle[i + 2])
      break
    elsif i == n - 1
      answer = "Yes"
    end
  end
  break if answer == "Yes"
end

puts answer
