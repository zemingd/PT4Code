package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Split(bufio.ScanWords)
	var N, K int
	var A []int64
	var B []int64

	N = nextInt()
	K = nextInt()
	for i := 0; i < N; i++ {
		A = append(A, int64(nextInt()))
		if i > 0 {
			for j := 0; j< i;j++ {
				B = append(B, A[i] * A[j])
			}
		}
	}
	// for i := 0; i < N-1; i++ {
	// 	for j := i+1; j < N; j++ {
	// 		B = append(B, A[i] * A[j])
	// 	}
	// }
	sort.Slice(B, func(i, j int) bool {
		return B[i] < B[j]
	})
	// sort.Ints(B)
	fmt.Println(B[K-1])
}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}
