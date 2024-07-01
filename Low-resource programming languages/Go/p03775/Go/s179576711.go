package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	ans := 1 << 62
	for A := 1; A*A <= N; A++ {
		B := N / A
		if A*B != N {
			continue
		}
		ans = Min(ans, digits(Max(A, B)))
	}
	fmt.Println(ans)
}

func digits(a int) int {
	d := 0
	for a > 0 {
		d++
		a /= 10
	}
	return d
}

func Min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
