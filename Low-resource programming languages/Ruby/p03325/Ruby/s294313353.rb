require 'prime'

def main
  n = gets.to_i
  line = gets.chomp.split(' ').map(&:to_i)

  test_run(n, line)
end

def test_run(n, line)
  cnt = 0
  line.each do |i|
    factors = Prime.prime_division i
    factors.each do |f|
      cnt += f[1] if (f[0] == 2)
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  main
end
