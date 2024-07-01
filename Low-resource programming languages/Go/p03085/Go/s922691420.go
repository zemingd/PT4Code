package main

import "fmt"

func main() {
	var b string
	fmt.Scan(&b)
	m := map[string]string{
		"A": "T",
		"T": "A",
		"G": "C",
		"C": "G",
	}
	fmt.Println(m[b])
}
