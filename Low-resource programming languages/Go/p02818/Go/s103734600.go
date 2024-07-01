package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	A, B, K := ReadInt(), ReadInt(), ReadInt()
	if A >= K {
		fmt.Println(A-K, B)
		return
	}
	if A+B >= K {
		fmt.Println(0, B-(K-A))
	} else {
		fmt.Println(0, 0)
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
func ReadInts(n int) (a []int) {
	for i := 0; i < n; i++ {
		a = append(a, ReadInt())
	}
	return
}
