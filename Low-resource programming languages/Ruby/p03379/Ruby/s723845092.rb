N=gets.to_i
x=Array.new(N)
x[0..N]=gets.split(' ').map(&:to_i)

i=0

while i<N do
  y=Marshal.load(Marshal.dump(x))
  y.delete_at(i)
  y.sort!
  puts y[N/2-1]
  i+=1
end
