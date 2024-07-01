package main

import (
	"fmt"
)

func main() {
	var n, k float64
	fmt.Scan(&n, &k)


	res := 0.0
	for i := float64(1);i<=n;i++ {

		v := i
		tmp := 1.0
		for v < k {
			v*=2
			tmp /= 2.0
		}

		res += tmp
	}

	fmt.Println(res/ n)
}
