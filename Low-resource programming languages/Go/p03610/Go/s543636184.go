package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var o string
	for i, r := range s {
		if i%2 == 0 {
			o += string(r)
		}
	}
	fmt.Println(o)
}
