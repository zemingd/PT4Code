class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @s = gets.chomp
    @k = gets.to_s.to_i
  end

  def solve
    if k <= ones_length
      return 1
    else
      return not_one_head
    end
  end

  def ones_length
    ans = 0
    ans += 1 while s[ans] == "1"
    ans
  end

  def not_one_head
    s.chars.each do |c|
      return c if c != "1"
    end
    return nil
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end