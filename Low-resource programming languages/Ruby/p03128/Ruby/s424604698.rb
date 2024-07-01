n, m = gets.split.map(&:to_i)
as = gets.chomp.split

h = Hash.new("0")

table = {
  "1" => "2",
  "2" => "5",
  "3" => "5",
  "4" => "4",
  "5" => "5",
  "6" => "6",
  "7" => "3",
  "8" => "7",
  "9" => "6"
}

as.each do |a|
  h[table[a]] = [a, h[table[a]]].max
end

keys = h.keys
dp = Hash.new("0")
(1..n).each do |i|
  tmp = h[i.to_s]
  keys.each do |k|
    k = k.to_i
    if dp[i - k] != "0"
      a = dp[i - k].to_s
      b = h[k.to_s].to_s
      str = a < b ? (b + a) : (a + b)
      if tmp.length < str.length || (tmp.length == str.length && tmp < str)
        tmp = str
      end
    end
  end
  dp[i] = tmp
end

puts dp[n]