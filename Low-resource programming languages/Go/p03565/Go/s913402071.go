package main

import "fmt"

func main() {
	var S, T []byte
	fmt.Scan(&S, &T)
	var ok, replaced bool
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
				for k := 0; k < len(t); k++ {
					S[j+k] = T[k]
					replaced = true
				}
				for k := 0; k < len(S); k++ {
					if S[k] == '?' {
						fmt.Print("a")
					} else {
						fmt.Print(string(S[k]))
					}
				}
				fmt.Println()
				return
			}
		}
	}
	if !replaced {
		fmt.Println("UNRESTORABLE")
	}
}
