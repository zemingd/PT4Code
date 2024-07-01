"区間の重なりを求める問題"

a,b,c,d = gets.split.map(&:to_i)

alice = (a..b).to_a
bob = (c..d).to_a
cross = alice & bob
puts (cross.length==0 ? 0 : cross.length-1 )