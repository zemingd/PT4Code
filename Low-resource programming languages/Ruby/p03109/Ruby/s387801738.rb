# coding: utf-8
X = class Case01

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
    @s = gets.chomp
  end

  # 回答
  def solve
    @result = (@s <= '2019/04/30')
  end
  
  # 出力
  def output
    puts @result ? 'Heisei' : 'TBD'
  end

end

# 
X.new.execute
