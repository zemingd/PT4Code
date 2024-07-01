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
    @s = gets.chomp
  end

  def solve
    @result = 'x' * @s.length
  end
  
  def output
    puts @result
  end

end

Case02.new.execute if $0 == __FILE__
