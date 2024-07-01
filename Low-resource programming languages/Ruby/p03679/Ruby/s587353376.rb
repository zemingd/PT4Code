# coding: utf-8
class Case01

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
    @x, @a, @b = gets.chomp.split.map(&:to_i)
  end

  # 回答
  def solve
    @delicious = (@b - @a <= 0)
    @safe = (@b - @a <= @x)
  end
  
  # 出力
  def output
    if @delicious then
      puts 'delicious'
    elsif @safe then
      puts 'safe'
    else
      puts 'dangerous'
    end
  end

end

Case01.new.execute if $0 == __FILE__

