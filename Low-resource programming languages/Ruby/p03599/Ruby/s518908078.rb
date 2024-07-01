A,B,C,D,E,F = gets.split.map(&:to_i)

le = E.to_f/100

m = 0.0
v1,v2 = [A*100,0]
rest = F
(0..rest/(100*A)).each{ |a|
  water = a*A*100
  rest = F - water
  (0..rest/(100*B)).each{ |b|
    water = water + b*B*100
    next if water == 0
    rest_sugar = [F - water, water*E/100].min
    sugar = (0..rest_sugar/C).map{ |c|
      sc = c*C
      sd = (rest_sugar - sc)/D*D
      sc + sd
    }.max
    mm = sugar.to_f/water.to_f
    next if mm > le
    next if mm <= m
    #$stderr.puts "#{[a,b,c,d,sugar,water,mm]}"
    m = mm
    v1,v2 = [water,sugar]
  }
}
puts "#{(v1+v2).to_i} #{v2.to_i}"