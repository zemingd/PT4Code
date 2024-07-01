class Main
  def execute
    @a, @b, @c = gets.split.map(&:to_i)
    @d = @a - @b
    ans = @c - @d
    puts 0 if ans < 0
  end
end
Main.new.execute