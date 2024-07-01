require 'set'

class Peaks
  def initialize(n, ah, aab)
    @n = n
    @ah = ah
    @aab = aab
  end

  def solve
    st = Set.new

    @aab.each do |ab|
      if @ah[ab[0] - 1] < @ah[ab[1] - 1]
        st << ab[0]
      elsif @ah[ab[0] - 1] > @ah[ab[1] - 1]
        st << ab[1]
      else
        st << ab[0]
        st << ab[1]
      end
    end
    
    @n - st.size
  end
end

def run
  n, m = gets.scan(/\d+/).map(&:to_i)
  ah = gets.scan(/\d+/).map(&:to_i)
  aab = Array.new(m){gets.scan(/\d+/).map(&:to_i)}
  
  puts Peaks.new(n, ah, aab).solve
end

run

