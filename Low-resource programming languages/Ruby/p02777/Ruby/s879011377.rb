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
    @s, @t = gets.chomp.split
    @a, @b = gets.chomp.split.map(&:to_i)
    @u = gets.chomp
  end

  def solve
    if @u == @s then
      @a -= 1 
    else
      @b -= 1
    end
  end
  
  def output
    puts "#{@a} #{@b}"
  end

end

Case01.new.execute if $0 == __FILE__
