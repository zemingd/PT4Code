package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, X := ReadInt(), ReadInt()
	Ls := ReadInts(N)
	cnt := 1
	x := 0
	for _, l := range Ls {
		x += l
		if x <= X {
			cnt++
		} else {
			break
		}
	}
	fmt.Println(cnt)
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
