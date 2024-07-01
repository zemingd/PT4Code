N, M = gets.split.map(&:to_i)
work = []
N.times do |i|
  a,b = gets.split.map(&:to_i)
  work << [a,b]
end
work.sort!{|x,y| y[0] <=> x[0]}
work.sort!{|x,y| y[1] <=> x[1]}

ans = 0
i = M
target = 0
while i != 0
  #puts "i = #{i} work = #{work}"
  work.each_with_index{|w,j|
    a,b = w
    if a <= i
      ans += b
      # puts "a = #{a} b = #{b} i = #{i} ans = #{ans}"
      work.delete_at(j)
      break
    else
      work.delete_at(j)
      next
    end
  }
  i -= 1
end
puts ans