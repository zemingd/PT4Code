io = STDIN
s=io.gets.chomp
$ar= %w(dreameraser dreamerase dreamer dream eraser erase)
def check(s)
  while true
    return false if $ar.none?{|st|s.start_with?(st)}
    $ar.each do |st|
      if s.start_with?(st)
        s = s[st.size..-1]
        return true if s.size==0
      end
    end
  end
end
puts check(s) ? "YES" : "NO"