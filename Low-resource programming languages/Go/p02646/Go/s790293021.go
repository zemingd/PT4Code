package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	A, V, B, W, T := ReadInt(), ReadInt(), ReadInt(), ReadInt(), ReadInt()
	B -= A
	if B < 0 {
		B = -B
	}
	if B+W*T <= V*T {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
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