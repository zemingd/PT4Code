package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	res := make(map[int]int)
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		for j := 0; j < a; j++ {
			var x, y int
			fmt.Scan(&x, &y)
			if y == 1 {
				res[x]++
			}
		}
	}

	var sum int
	for i := 1; i < n+1; i++ {
		if v, ok := res[i]; ok {
			sum += v
		}
	}

	if n == sum {
		fmt.Println(0)
	} else if len(res) == 0 {
		fmt.Println(1)
	} else {
		fmt.Println(sum)
	}
}
