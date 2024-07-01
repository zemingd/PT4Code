puts *$<.drop(1).first.split.uniq.length == 3 ? "Three" : "Four"
