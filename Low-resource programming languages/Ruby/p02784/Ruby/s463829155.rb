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
    @h, @n = gets.chomp.split.map(&:to_i)
    @a = gets.chomp.split.map(&:to_i)
  end

  def solve
    if @a.reduce(&:+) >= @h then
      @result = 'Yes'
    else
      @result = 'No'
    end
  end
  
  def output
    puts @result
  end

end

Case02.new.execute if $0 == __FILE__