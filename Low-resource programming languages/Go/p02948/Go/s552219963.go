package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func solve(i, M int, A, B []int, m map[int]bool, ans int) int {
	if i == M {
		return ans
	}
	ret := ans
	for n := 0; n < len(A); n++ {
		if m[n] {
			continue
		}
		if i+A[n] > M {
			continue
		}
		m[n] = true
		tmp := solve(i+1, M, A, B, m, ans+B[n])
		if tmp > ret {
			ret = tmp
		}
		delete(m, n)
	}
	return ret
}

func main() {
	input := bufio.NewReader(os.Stdin)

	var N, M int
	fmt.Fscanf(input, "%d %d\n", &N, &M)
	A := make([]int, N)
	B := make([]int, N)
	for n := 0; n < N; n++ {
		fmt.Fscanf(input, "%d %d\n", &A[n], &B[n])
	}

	m := make([][]int, M+1)
	for i := range m {
		m[i] = make([]int, 0)
	}
	for n := 0; n < N; n++ {
		if A[n] <= M {
			m[A[n]] = append(m[A[n]], B[n])
		}
	}
	for i := range m {
		sort.Ints(m[i])
	}

	var ans int
	for i := 1; i <= M; i++ {
		var max, maxJ int
		for j := 1; j <= i; j++ {
			if len(m[j]) == 0 {
				continue
			}
			tmp := m[j][len(m[j])-1]
			if tmp > max {
				max = tmp
				maxJ = j
			}
		}
		if max == 0 {
			continue
		}
		ans += max
		m[maxJ] = m[maxJ][:len(m[maxJ])-1]
	}
	fmt.Println(ans)
}
