package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var m = map[string]string{
		"A": "T",
		"T": "A",
		"C": "G",
		"G": "C",
	}
	fmt.Println(m[s])
}
