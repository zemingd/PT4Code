package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	sum := 1
	for i := 0; i < n-1; i++ {
		ft := s[i : i+1]
		sd := s[i+1 : i+2]
		if ft != sd {
			sum++
		}
	}
	fmt.Println(sum)
}
