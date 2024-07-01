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
    @n, @m = gets.chomp.split.map(&:to_i)
    @k = []
    @a = []
    @n.times do
      t = gets.chomp.split.map(&:to_i)
      @k << t[0]
      @a << t[1..-1]
    end
  end

  # 回答
  def solve
    @result = []
    1.upto(@m) do |i|
      count = 0
      1.upto(@n) do |j|
        if @a[j-1].include?(i) then
          count += 1
        end
      end
      if count == @n then
        @result << i
      end
    end
  end
  
  # 出力
  def output
    puts @result.count
  end

end

# 
Case02.new.execute if $0 == __FILE__

