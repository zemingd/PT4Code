def bubble_sort
  flag = true
  while flag do
    flag = false
    (@N-1).downto 1 do |j|
      if @A[j] < @A[j-1]
        @A[j], @A[j-1] = @A[j-1], @A[j]
        flag = true
        @count += 1
      end
    end
  end
end


@count = 0
@N = gets.to_i
@A = gets.split(" ").map{|x| x.to_i}

bubble_sort

@A.each_with_index do |x, i|
  print x
  print i == @N-1 ? "\n" : " "
end
puts @count

