# coding: utf-8
class Case04

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
  end

  # 回答
  def solve
    @result = (1..@n-1).reduce(0) {|r, x| r + x}
  end
  
  # 出力
  def output
    puts @result
  end

end

Case04.new.execute if $0 == __FILE__

