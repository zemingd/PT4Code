package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	a := ReadInts(N)
	colors := make(map[int]bool)
	wcount := 0
	for _, ai := range a {
		color := ai / 400
		if color >= 8 {
			wcount++
		} else {
			colors[color] = true
		}
	}
	min := Max(1, len(colors))
	max := Min(len(colors) + wcount)
	fmt.Println(min, max)
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
