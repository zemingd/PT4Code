package main

import "fmt"

func main() {
	var r, D, m int
	fmt.Scan(&r, &D, &m)
	for i := 1; i <= 10; i++ {
		p := r*m - D
		fmt.Println(p)
		m = p
	}
}
