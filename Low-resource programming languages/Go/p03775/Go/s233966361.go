package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	N := ReadInt()

	ans := math.MaxInt64
	for i := 1; i*i <= N; i++ {
		if N%i != 0 {
			continue
		}
		j := N / i
		ans = Min(ans, F(i, j))
	}
	fmt.Println(ans)
}

func Min(xs ...int) int {
	min := xs[0]
	for _, x := range xs[1:] {
		if min > x {
			min = x
		}
	}
	return min
}

func F(a, b int) int {
	if b > a {
		a = b
	}
	n := 0
	for a > 0 {
		n++
		a /= 10
	}
	return n
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
