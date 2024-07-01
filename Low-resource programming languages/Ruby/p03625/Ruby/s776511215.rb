N, *AS = $stdin.read.split.map(&:to_i)
AS.sort!
AS.reverse!

(x, _), (y, _) =
  AS.lazy
    .chunk{|a| a}
    .select{|a, as| as.size >= 2}
    .take(2)
    .force

if x && y
  p x * y
else
  p 0
end
