n,w=gets.to_i,gets.split(" ")
a=w.count("P"),w.count("W"),w.count("G"),w.count("Y")
puts ["","","Three","Four"][3-a.count(0)]