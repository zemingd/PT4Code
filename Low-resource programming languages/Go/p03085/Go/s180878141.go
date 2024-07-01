package main

import "fmt"

func main() {
	var c string
	fmt.Scan(&c)
	m := map[byte]byte{
		'A': 'T',
		'T': 'A',
		'G': 'C',
		'C': 'G',
	}
	fmt.Println(string(m[c[0]]))
}
