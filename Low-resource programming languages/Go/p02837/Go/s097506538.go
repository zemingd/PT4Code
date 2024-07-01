package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)

	x := make([][]int, N)
	y := make([][]int, N)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A[i])
		x[i] = make([]int, A[i])
		y[i] = make([]int, A[i])
		for j := 0; j < A[i]; j++ {
			fmt.Scanf("%d %d", &x[i][j], &y[i][j])
		}
	}

	max := 0

	for i := 0; i < 2<<N; i++ {
		// 正直者 1, 不親切な人 0
		isValid := true
		for j := 0; j < N; j++ {
			if (i >> j % 2) == 0 {
				continue
			}
			// validate
			for k := 0; k < A[j]; k++ {
				target := x[j][k] - 1
				if y[j][k] == 1 {
					if (i >> target % 2) != 1 {
						isValid = false
						break
					}
				} else {
					if (i >> target % 2) == 1 {
						isValid = false
						break
					}
				}
			}
			if !isValid {
				break
			}
		}
		if isValid {
			count := 0
			for j := 0; j < N; j++ {
				if (i >> j % 2) == 1 {
					count++
				}
			}
			if count > max {
				max = count
			}
		}
	}
	fmt.Println(max)
}
