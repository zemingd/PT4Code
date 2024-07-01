  a,v=gets.split.map(&:to_i)
  b,w=gets.split.map(&:to_i)
  t=gets.to_i
  puts (v-w)*t >= (b-a).abs ? "YES" : "NO"
