package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	d := map[int]int{}

	for range make([]struct{}, n) {
		var k int
		fmt.Scan(&k)
		for range make([]struct{}, k) {
			var a int
			fmt.Scan(&a)
			d[a]++
		}
	}

	var a int
	for _, v := range d {
		if v == n {
			a++
		}
	}
	fmt.Println(a)
}
