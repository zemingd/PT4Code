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

  def read
    @n = gets.chomp.to_i
  end

  def solve
    @result = @n ** 3
  end
  
  def output
    puts @result
  end

end

Case01.new.execute if $0 == __FILE__

