N = gets.to_i
a = gets.chomp
Q = gets.to_i
b_c = []
Q.times do
  b_c << gets.split.map(&:to_s)
end

class String
  def change(a, b)
    new_array = self.gsub!(a,b)
    new_array
  end
end


b_c.each do |i|
  a = a.change(i[0], i[1]) if a.match i[0]
  puts a.split.map(&:to_i).sum
end
