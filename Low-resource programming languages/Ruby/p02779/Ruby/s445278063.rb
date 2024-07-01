# coding: utf-8
class Case03

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
  end

  def solve
    @a.sort!
    @result = 'YES'
    0.upto(@n-2) do |i|
      if @a[i] == @a[i+1] then
        @result = 'NO'
        break;
      end
    end
  end
  
  def output
    puts @result
  end

end

Case03.new.execute if $0 == __FILE__
