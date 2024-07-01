package main

import "fmt"

func main() {
	var n uint32

	fmt.Scan(&n)

	t := make([][]int, n, n)
	for i := 0; i < n; i++ {
		t[i] = make([]int, n, n)
		for j := 0; j < n; j++ {
			t[i][j] = -1
		}
	}

	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)

		for j := 0; j < a; j++ {
			var x, y int
			fmt.Scan(&x)
			fmt.Scan(&y)
			x--
			t[i][x] = y
		}
	}

	answer := 0
	for b := 0; b < 1<<n; b++ {
		ok := true

		for i := uint32(0); i < n; i++ {
			for j := uint32(0); j < n; j++ {
				if (b>>i)&1 == 1 && (t[i][j] == 0 || t[i][j] == 1) && (b>>j)&1 != t[i][j] {
					ok = false
				}
			}
		}

		if ok {
			tmp := 0
			for i := uint32(0); i < n; i++ {
				tmp += (b >> i) & 1
			}

			if tmp > answer {
				answer = tmp
			}
		}
	}

	fmt.Println(answer)
}
