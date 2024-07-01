class Otoshidama
  def initialize(n, y)
    @n = n
    @b10000 = 0
    @b5000 = 0
    @b1000 = y / 1000
  end

  def calc
    # 1000 => 10000 で9枚、1000 => 5000 で4枚減らせる
    # 9か4を引く操作をn回以内でしたとき、計枚数がnになれば可能
    redundant = @b1000 - @n
    @n.times do
      if redundant < 4
        break
      elsif redundant % 9 == 0 && 10 * (redundant / 9) <= @b1000
        numOf10000 = redundant / 9
        @b10000 += numOf10000
        @b1000 -= 10 * numOf10000
        break
      else
        redundant -= 4
        @b5000 += 1
        @b1000 -= 5
      end  
    end

    setDummyAnswer if @b10000 + @b5000 + @b1000 != @n
  end

  def setDummyAnswer
    @b10000 = -1
    @b5000 = -1
    @b1000 = -1
  end

  def answer
    puts "#{@b10000} #{@b5000} #{@b1000}"
  end
end

N, Y = gets.chomp.split(" ").map(&:to_i)
otoshidama = Otoshidama.new(N, Y)
otoshidama.calc
otoshidama.answer
