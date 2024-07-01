p gets.split.inject([]){|s,o|s<<("+-*"[o]?s.pop(2).inject(o):o.to_i)}[0]
