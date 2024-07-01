package main

import "fmt"

func main() {
	var N, M int
	fmt.Scanln(&N, &M)

	data := make([][]int, N)

	for i := 0; i < N; i++ {
		var K int
		fmt.Scan(&K)

		fav := make([]int, K)
		for j := 0; j < K; j++ {
			var a int
			fmt.Scan(&a)
			fav[j] = a
		}
		data[i] = fav
	}

	result := 0
	for i := 1; i <= M; i++ {
		ok := true
		for _, fav := range data {
			found := false
			for _, n := range fav {
				if n == i {
					found = true
					break
				}
			}
			if !found {
				ok = false
				break
			}
		}
		if ok {
			result++
		}
	}

	fmt.Println(result)
}
