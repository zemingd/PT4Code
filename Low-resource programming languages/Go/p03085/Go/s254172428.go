package main

import "fmt"

func main() {
	var b string
	fmt.Scan(&b)
	mapping := map[string]string{
		"A": "T",
		"T": "A",
		"C": "G",
		"G": "C",
	}
	fmt.Println(mapping[b])
}
