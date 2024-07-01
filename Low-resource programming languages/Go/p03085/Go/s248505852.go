package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	mp := map[string]string{
		"A": "T",
		"T": "A",
		"C": "G",
		"G": "C",
	}
	fmt.Println(mp[s])
}
