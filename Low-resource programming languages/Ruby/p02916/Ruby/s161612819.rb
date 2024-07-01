# coding: utf-8
class Case02

  def initialize
  end

  def show
    p self.instance_variables
        .map{ |sym| [sym, self.instance_variable_get(sym)] }
        .to_h
  end
  
  # 実行する
  def execute
    read
    solve
    output
  end

  def read
    @n = gets.chomp.to_i
    @a = gets.chomp.split.map(&:to_i)
    @b = gets.chomp.split.map(&:to_i)
    @c = gets.chomp.split.map(&:to_i)
  end

  def solve
    @result = 0
    1.upto(@n) do |i|
      x = @a[i-1]
      @result += @b[x-1]
      if i > 1 && x == (@a[i-2] + 1) then
        @result += @c[x-2]
      end
    end
  end
  
  def output
    puts @result
  end

end

Case02.new.execute if $0 == __FILE__

