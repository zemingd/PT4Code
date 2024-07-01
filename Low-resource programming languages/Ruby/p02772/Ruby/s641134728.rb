n = gets.to_i
x = gets.split.map(&:to_i)
def paper(b)
  b.each do |i|
    if i.even?
      unless i % 3 == 0 || i % 5 == 0
        puts "DENIED"
        exit
      end
    end
  end
  puts "APPROVED"
end

paper(x)