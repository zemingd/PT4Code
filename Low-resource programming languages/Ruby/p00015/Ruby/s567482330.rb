class Budget
  def initialize
    @n = $stdin.gets.chomp.to_i
    @count = 0
    @sum = 0
    @result = []
    calc
  end

  def calc
    (@n.to_i*2).times do
      val = $stdin.gets
      @count += 1
      @sum += val.chomp.to_i

      if @count == 2
        @result.push(@sum)
        @sum = 0
        @count = 0
      end 
    end

    @result.each do |n| 
      if n.to_s.size > 80
        puts "overflow"
      else
        puts n
      end
    end
  end
end

b = Budget.new