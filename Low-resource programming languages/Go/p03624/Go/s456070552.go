package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	memo := make([]bool, 26)

	for _, c := range s {
		memo[c-'a'] = true
	}

	for i, b := range memo {
		if !b {
			fmt.Println("abcdefghijklmnopqrstuvwxyz"[i : i+1])
			return
		}
	}
	fmt.Println("None")
}
