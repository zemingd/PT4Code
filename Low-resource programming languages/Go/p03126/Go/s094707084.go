package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	var d = make(map[int]int)

	for i := 0; i < n; i++ {
		var k int
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			var food int
			fmt.Scan(&food)
			d[food]++
		}
	}

	var cnt int
	for _, v := range d {
		if v == n {
			cnt++
		}
	}
	fmt.Println(cnt)
}
