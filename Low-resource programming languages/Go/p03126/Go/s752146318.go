package main

import "fmt"

func main() {
	var n, unused int
	fmt.Scan(&n, &unused)
	m := make(map[int]int)

	for i := 0; i < n; i++ {
		var k int
		fmt.Scan(&k)

		for j := 0; j < k; j++ {
			var a int
			fmt.Scan(&a)
			if _, ok := m[a]; ok {
				m[a]++
			} else {
				m[a] = 1
			}
		}
	}

	res := 0
	for _, v := range m {
		if v == n {
			res++
		}
	}

	fmt.Println(res)
}
