class Abc131B
  def self.input()
    n, l = STDIN.gets.split(/\s/).map(&:to_i)
    [n, l]
  end

  def self.output(result)
    puts result
  end

  def self.calc(n, l)
    apple_list = n.times.map { |i| l + (i+1) -1 }
    min_value = apple_list.min_by{|a| a.abs }
    apple_list.inject(0,&:+) - min_value
  end

  def self.main()
    n, l = input()
    result = calc(n, l)
    output(result)
  end
end

if __FILE__ == $0
  Abc131B.main
  exit
end