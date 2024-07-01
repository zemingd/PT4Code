package main

import "fmt"

func main() {
	var N, K int64
	fmt.Scan(&N, &K)
	var tmp int64
	N = N % K
	for {
		tmp = N - K

		if tmp < 0 {
			tmp = -1 * tmp
		}
		if tmp < N {
			N = tmp
		} else {
			break
		}
		if N == 0 {
			break
		}
	}

	fmt.Println(N)

}
