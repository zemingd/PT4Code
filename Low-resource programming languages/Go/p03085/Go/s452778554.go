package main

import "fmt"

func main() {
	m := map[string]string{"A": "T", "T": "A", "C": "G", "G": "C"}
	var s string
	_, _ = fmt.Scan(&s)
	fmt.Println(m[s])
}