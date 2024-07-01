package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	sunuke := make(map[int]bool, n)
	for i := 0; i < k; i++ {
		var d int
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			var a int
			fmt.Scan(&a)
			sunuke[a] = true
		}
	}
	var cnt int
	for _, v := range sunuke {
		if v == true{
			cnt++
		}
	}
	fmt.Println(n - cnt)
}
