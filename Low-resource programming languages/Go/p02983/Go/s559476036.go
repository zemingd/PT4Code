package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	L, R := ReadInt(), ReadInt()
	if R-L+1 >= 2019 {
		fmt.Println(0)
		return
	}
	if L%2019 > R%2019 {
		fmt.Println(0)
		return
	}

	min := 2018
	for i := L % 2019; i < R%2019; i++ {
		v := (i * (i + 1)) % 2019
		if v < min {
			min = v
		}
	}
	fmt.Println(min)
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
