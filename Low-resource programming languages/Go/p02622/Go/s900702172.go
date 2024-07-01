package main

import (
	"fmt"
)

func main() {
	var S,T string
	fmt.Scan(&S, &T)
	
	var s,t string
	var counter int
	for i := 0; i < len(S); i++ {
		s = S[i:i+1]
		t = T[i:i+1]
		if s != t {
			counter++
		}
	}
	fmt.Println(counter)
}

