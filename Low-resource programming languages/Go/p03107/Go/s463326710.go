package main

import "fmt"

func main() {
	var s []byte
	fmt.Scan(&s)

	r := 0
	b := 0
	for i := 0; i < len(s); i++ {
		if s[i] == '0' {
			r++
		} else {
			b++
		}
	}
	fmt.Println(len(s) - abs(r-b))

}

func abs(n int) int {
	y := n >> 63
	return (n ^ y) - y
}
