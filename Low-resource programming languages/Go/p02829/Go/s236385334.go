package main

import "fmt"

func main() {
	var N int
	m := map[int]bool{1: true, 2: true, 3: true}
	for i := 0; i < 2; i++ {
		fmt.Scan(&N)
		m[N] = false
	}
	for k, v := range m {
		if v {
			fmt.Printf("%v\n", k)
		}
	}
}
