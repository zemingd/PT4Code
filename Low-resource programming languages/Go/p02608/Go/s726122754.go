package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	f := make([]int, N+1)
	for x := 1; x*x < N; x++ {
		for y := 1; y*y < N; y++ {
			for z := 1; z*z < N; z++ {
				v := x*x + y*y + z*z + x*y + y*z + z*x
				if v <= N {
					f[x*x+y*y+z*z+x*y+y*z+z*x]++
				}
			}
		}
	}
	for i := 1; i <= N; i++ {
		fmt.Println(f[i])
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
