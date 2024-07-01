S = gets.chomp
T = gets.chomp

if T.chars.uniq.all? {|s| S.include?(s) }
  pos = Hash.new {|h,k| h[k] = [] }
  S.each_char.with_index(1) {|c,i| pos[c] << i }

  i = 0
  l = 0
  T.each_char do |c|
    a = pos[c]
    j = 0
    k = a.size - 1
    m = 0
    n = nil
    while j <= k
      m = j + (k-j)/2
      if i < a[m]
        n = a[m]
        k = m - 1
      else
        j = m + 1
      end
    end
    if n
      i = n
    else
      l += 1
      i = 0
      redo
    end
  end
  puts i + S.size * l
else
  puts -1
end
