n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
a.sort!

bcs = []
m.times do 
  bcs << gets.chomp.split(' ').map(&:to_i)
end


bcs.sort!{|x, y| y[1] <=> x[1]}

i = 0

catch :loop do

bcs.each do |bc|
  bc[0].times do
    if i <= n
      if bc[1] > a[i]
        a[i] = bc[1]
        i += 1
      else
        throw :loop
      end
    end
  end
end

end

puts a.inject(:+)
