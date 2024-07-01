package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	A, B, C, K := ReadInt(), ReadInt(), ReadInt(), ReadInt()
	for k := 0; k < K; k++ {
		if A >= B {
			B *= 2
			continue
		}
		if B >= C {
			C *= 2
			continue
		}
		C *= 2
	}
	if A < B && B < C {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
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
