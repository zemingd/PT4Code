puts -> x { x==0 ? '=' : x>0 ? '>' : '<' }.(gets.split.map(&:ord).inject(:-))
