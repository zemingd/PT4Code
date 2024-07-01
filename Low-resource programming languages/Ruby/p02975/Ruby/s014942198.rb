n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

circle = a.permutation(n).to_a[0...n - 1].map { |a| RingArray.new(a) }

answer = "No"

circle.each do |c|
  n.times do |i|
    if c[i + 1] != (c[i] ^ c[i + 2])
      break
    elsif i == n - 1
      answer = "Yes"
    end
  end
  break if answer == "Yes"
end

puts answer