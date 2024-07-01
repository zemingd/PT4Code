package main

import "fmt"

func calc(n int) (m int) {
	m = 1
	for {
		if t := m * 2; n >= t {
			m = t
		} else {
			break
		}
	}
	return
}

func main() {
	var n int
	fmt.Scan(&n)
	fmt.Println(calc(n))
}
