package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	s := make([]int, n)

	var d, a int
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			fmt.Scan(&a)
			s[a-1] ++
		}
	}

	c := 0
	for _, v := range s {
		if v == 0 {
			c++
		}
	}

	fmt.Println(c)
}
