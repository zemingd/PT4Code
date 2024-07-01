class XYZ_Triplets
  def initialize(n)
    @n = n
    @ac = Array.new(n+1, 0)
    @ls = (1..).take_while{|i| i * i < n}
  end

  def solve
    @ls.each do |x|
      @ls.each do |y|
        @ls.each do |z|
          m = x * x + y * y + z * z + x * y + y * z + z * x
          if m <= @n
            @ac[m] += 1
          end
        end
      end
    end
    
    (1..@n).each do |i|
      puts @ac[i]
    end
  end
end

def run
  n = gets.chomp.to_i
  
  XYZ_Triplets.new(n).solve
end

run
