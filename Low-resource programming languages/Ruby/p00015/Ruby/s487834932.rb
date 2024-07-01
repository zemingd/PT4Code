class Digit
   def initialize(digit, str1, str2)
	  @digit = digit
	  @flag = 0
	  if (str1.length > digit) || (str2.length > digit)
		 @flag = nil
		 puts "overflow"
	  end
	  @array1, @array2, @ans = [],[],[]
	  @digit.times {|i| @array1.push(str1[i-@digit].to_i); @array2.push(str2[i-@digit].to_i)}
	  (@digit+1).times {@ans.push(0)}
   end
   attr_reader :array1, :array2, :ans
   def plus
	  if @flag
		 (1..@digit).each do |i|
			sum = @array1[-i] + @array2[-i]
			if @ans[-i] + sum > 9
			   @ans[-i] = @ans[-i] + sum - 10
			   @ans[-i-1] = 1
			else
			   @ans[-i] = @ans[-i] + sum
			end
		 end
		 if @ans[0] != 0
			puts "overflow"
			@flag = nil
		 end
	  end
   end
   def puts_ans
	  if @flag
		 index = 0
		 while @ans[index] == 0
			index += 1
		 end
		 (index..(@digit+1)).each {|each| print @ans[each].to_s}
		 print "\n"
	  end
   end
end

num = gets.to_i
num.times do
   str1 = gets
   str1.slice!(-1)
   str2 = gets
   str2.slice!(-1)
   if (str1 == "0") && (str2 == "0")
	  puts "0"
   end
   d = Digit.new(80, str1, str2)
   d.plus
   d.puts_ans
end