#coding: euc-jp
class Main
  def self.main
    n = read
    min = 10 ** 15
    5.times do
      a = read
      min = a if a < min
    end
    puts 4 + n / min + (n % min == 0 ? 0 : 1)
  end

  def self.read
    gets.chomp.to_i
  end
end

Main.main
