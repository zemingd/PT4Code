package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N, W := ReadInt(), ReadInt()

	ws := make([]int, N+1)
	vs := make([]int, N+1)

	for i := 1; i <= N; i++ {
		ws[i], vs[i] = ReadInt(), ReadInt()
	}

	prev := make([]int, W+1)
	for i := 1; i <= N; i++ {
		next := make([]int, W+1)
		for w := 1; w <= W; w++ {
			next[w] = prev[w]
			if w-ws[i] >= 0 {
				next[w] = Max(next[w], prev[w-ws[i]]+vs[i])
			}

		}
		prev = next
	}
	fmt.Println(prev[W])
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

var sc = bufio.NewScanner(os.Stdin)

func init()        { sc.Buffer(make([]byte, 256), 1e9); sc.Split(bufio.ScanWords) }
func Read() string { sc.Scan(); return sc.Text() }

func ReadInt() int {
	v, e := strconv.Atoi(Read())
	if e != nil {
		panic(e.Error())
	}
	return v
}
