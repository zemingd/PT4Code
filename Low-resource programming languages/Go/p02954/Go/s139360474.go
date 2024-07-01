package main

import "fmt"

type block struct {
	left, right, num int
}

func main() {
	var S string
	fmt.Scan(&S)
	N := len(S)

	B := make([]block, N)

	M := 0
	B[0].left = 0
	for i := 1; i < N; i++ {
		if S[i] != S[i-1] {
			B[M].right = i - 1
			B[M].num = B[M].right - B[M].left + 1
			M++
			B[M].left = i
		}
	}
	B[M].right = N - 1
	B[M].num = B[M].right - B[M].left + 1
	M++

	ans := make([]int, N)
	for i, b := range B[:M] {
		if i%2 == 0 {
			ans[b.right] += (b.num / 2) + (b.num % 2)
			ans[b.right+1] += b.num / 2
		} else {
			ans[b.left] += (b.num / 2) + (b.num % 2)
			ans[b.left-1] += b.num / 2
		}
	}

	for _, a := range ans {
		fmt.Printf("%d ", a)
	}
	fmt.Printf("\n")
}
