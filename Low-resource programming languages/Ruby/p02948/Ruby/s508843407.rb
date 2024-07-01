N, M = gets.split.map(&:to_i)
work = []
N.times do |i|
  a,b = gets.split.map(&:to_i)
  work << [a,b]
end
work.sort!{|x,y| y[0] <=> x[0]}
work.sort!{|x,y| y[1] <=> x[1]}

ans = 0
i = 0
target = 0
while i != M
  #puts "i = #{i} work = #{work}"
  work.each_with_index{|w,j|
    a,b = w
    if a + i <= M
      ans += b
      # puts "a = #{a} b = #{b} i = #{i} ans = #{ans}"
      work.delete_at(j)
      break
    else
      work.delete_at(j)
      next
    end
  }
  i += 1
end
puts ans