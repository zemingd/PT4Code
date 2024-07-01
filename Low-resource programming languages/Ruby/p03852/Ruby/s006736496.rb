io = STDIN
s=io.gets.chomp
$ar= %w(dreamer dream eraser erase)
def check(s)
  while true
    return false if $ar.none?{|st|s.end_with?(st)}
    $ar.each do |st|
      if s.end_with?(st)
        s = s[0..-(st.size+1)]
        return true if s.size==0
      end
    end
  end
end
puts check(s) ? "YES" : "NO"