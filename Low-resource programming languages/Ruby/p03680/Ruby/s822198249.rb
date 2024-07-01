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

  # 読込
  def read
    @n = gets.chomp.to_i
    @a = []
    @n.times do
      @a << gets.chomp.to_i
    end
  end

  # 回答
  def solve
    @b = 1
    @s = 0
    while @b != 2 and @s < @n do
      @b = @a[@b-1]
      @s += 1
    end
  end
  
  # 出力
  def output
    puts (@b == 2) ? @s : -1;
  end

end

Case02.new.execute if $0 == __FILE__

