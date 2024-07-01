package main

import (
	"fmt"
	"strings"
)

func main() {
	var S, T []byte
	fmt.Scan(&S, &T)
	var ok, done bool
	for i := len(S) - 1; i >= 0; i-- {
		for j := i; j >= 0; j-- {
			ok = true
			t := S[j : i+1]
			if len(string(S[j:i+1])) == len(string(T)) {
				for k := 0; k < len(t); k++ {
					if T[k] != t[k] && t[k] != '?' {
						ok = false
						break
					}
				}
			} else {
				ok = false
			}
			if ok {
				copy(S[j:j+len(T)], T)
				done = true
			}
		}
		if done {
			break
		}
	}
	if !done {
		fmt.Println("UNRESTORABLE")
	} else {
		fmt.Println("debug", string(S))
		fmt.Println(strings.Replace(string(S), "?", "a", -1))
	}
}
