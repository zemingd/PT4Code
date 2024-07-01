class Budget
  def initialize
    @n = $stdin.gets.chomp.to_i
    @count = 0
    @sum = 0
    @result = []
    calc
  end

  def calc
    while(val = $stdin.gets) do
      @count += 1
      @sum += val.chomp.to_i

      if @count == @n
        @result.push(@sum)
        @sum = 0
        @count = 0
      end 
    end

    @result.each{|n| puts n}
  end
end

b = Budget.new