package main

import "fmt"

func main() {
	var b string
	fmt.Scan(&b)

	l := map[string]string{
		"A": "T",
		"C": "G",
		"G": "C",
		"T": "A",
	}

	fmt.Print(l[b])
}
