class Marks
  def initialize(n, k ,aa)
    @n = n
    @k = k
    @aa = aa
  end

  def solve
    (@k .. @n - 1).map do |i|
      if @aa[i - @k] < @aa[i]
        "Yes"
      else
        "No"
      end
    end
  end
end

def run
  n, k = gets.scan(/\d+/).map(&:to_i)
  aa = gets.scan(/\d+/).map(&:to_i)
  
  Marks.new(n, k, aa).solve.each{|x| puts x}
end

run
