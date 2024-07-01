
  def main
    n = gets.to_i
    a = gets.to_i
    solve(n,a)
  end

  def solve(n, a)
    if n % 500 < a
      puts 'Yes'
    else
      puts 'No'
    end
  end