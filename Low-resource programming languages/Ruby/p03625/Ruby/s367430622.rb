N, *AS = $stdin.read.split.map(&:to_i)
AS.sort!
AS.reverse!

x = nil
AS.lazy
  .chunk{|a| a}
  .select{|a, as| as.size >= 2}
  .each do |a, as|
    if as.size >= 4
      p a * a
      exit
    elsif x
      p x * a
      exit
    else
      x = a
    end
  end
