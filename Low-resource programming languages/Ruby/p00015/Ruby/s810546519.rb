class Digit
   def initialize(digit, str1, str2)
	  @digit = digit
	  if (str1.length > digit) || (str2.length > digit)
		 puts "overflow"
	  end
	  @array1, @array2, @ans = [],[],[]
	  digit.times {|i| @array1.push(str1[i-80].to_i); @array2.push(str2[i-80].to_i)}
	  (digit+1).times {@ans.push(0)}
   end
   attr_reader :array1, :array2, :ans
   def plus
	  @digit.times do |i|
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
	  end
   end
   def puts_ans
	  index = 0
	  while @ans[index] == 0
		 index += 1
	  end
	  (index..(@digit+1)).each {|each| print @ans[each].to_s}
	  print "\n"
   end
end

num = gets.to_i
num.times do
   str1 = gets
   str1.slice!(-1)
   str2 = gets
   str2.slice!(-1)
   d = Digit.new(80, str1, str2)
   d.plus
   d.puts_ans
end