package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	W, H, x, y := ReadInt(), ReadInt(), ReadInt(), ReadInt()
	if x == 0 || x == W || y == 0 || y == H {
		fmt.Println(H*W/2, 0)
		return
	}
	s1 := Min((H-y)*W, y*W)
	s2 := Min((W-x)*H, x*H)
	ans := Max(s1, s2)
	if 2*x == W && 2*y == H {
		fmt.Println(ans, 1)
	} else {
		fmt.Println(ans, 0)
	}
}

func Max(xs ...int) int {
	max := xs[0]
	for _, x := range xs[1:] {
		if max < x {
			max = x
		}
	}
	return max
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
