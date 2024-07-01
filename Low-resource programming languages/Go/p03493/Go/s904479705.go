package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var cnt int
	for _, c := range s {
		if c == '1' {
			cnt++
		}
	}
	fmt.Println(cnt)
}
