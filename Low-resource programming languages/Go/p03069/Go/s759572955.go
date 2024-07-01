package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	var ss, kk int
	first := false
	for _, v := range s {
		if v == '#' {
			first = true
		}
		if first {
			if v == '#' {
				kk++
			} else {
				ss++
			}
		}
	}
	if ss < kk {
		kk = ss
	}
	fmt.Println(kk)
}
