package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	var k, a int
	mp := map[int]int{}
	for i := 0; i < n; i++ {
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			fmt.Scan(&a)
			mp[a]++
		}
	}

	var cnt int
	for _, v := range mp {
		if v == n {
			cnt++
		}
	}
	fmt.Println(cnt)
}
