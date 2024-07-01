package main

import (
	"fmt"
	"strings"
)

func main() {
	var Sd, T string
	fmt.Scan(&Sd, &T)

	notFound := strings.Repeat("{", len(Sd))
	ans := notFound
	for i := 0; i < len(Sd)-len(T)+1; i++ {
		match := true
		gen := []byte(Sd)
		for j := 0; j < len(T); j++ {
			if gen[i+j] == '?' {
				gen[i+j] = T[j]
			}
			if gen[i+j] == T[j] {
				continue
			}
			match = false
			break
		}
		if !match {
			continue
		}

		for j := 0; j < len(gen); j++ {
			if gen[j] == '?' {
				gen[j] = 'a'
			}
		}
		genS := string(gen)
		if ans > genS {
			ans = genS
		}
	}
	if ans == notFound {
		fmt.Println("UNRESTORABLE")
	} else {
		fmt.Println(ans)
	}
}
