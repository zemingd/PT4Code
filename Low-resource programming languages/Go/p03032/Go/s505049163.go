package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

const Inf = 1 << 60

func main() {
	N, K := ReadInt(), ReadInt()
	V := ReadInts(N)

	max := -Inf
	for a := 0; a <= K && a <= N; a++ {
		for b := 0; a+b <= K && a+b <= N; b++ {
			sum := 0
			tmp := make([]int, a+b)
			for i := 0; i < a; i++ {
				sum += V[i]
				tmp = append(tmp, V[i])
			}
			for i := N - 1; i >= N-b; i-- {
				sum += V[i]
				tmp = append(tmp, V[i])
			}
			sort.Ints(tmp)
			maxC := K - (a + b)
			for i := 0; i < a+b && i < maxC; i++ {
				if tmp[i] >= 0 {
					break
				}
				sum -= tmp[i]
			}
			if sum > max {
				max = sum
			}
		}
	}
	fmt.Println(max)
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
