io = STDIN
n=io.gets.to_i

ab=n.times.map{io.gets.split.map(&:to_i)}
ar= ab.sort_by{|a,b|[b,a]}
def check(ar)
  ar.inject(0) do |s,(a,b)|
    rui = s+a
    return "No" if rui>b
    rui
  end
  "Yes"
end
puts check(ar)
