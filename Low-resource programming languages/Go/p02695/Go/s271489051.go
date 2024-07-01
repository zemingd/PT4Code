package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N, M, Q := ReadInt(), ReadInt(), ReadInt()

	as := make([]int, Q)
	bs := make([]int, Q)
	cs := make([]int, Q)
	ds := make([]int, Q)
	for q := 0; q < Q; q++ {
		as[q], bs[q], cs[q], ds[q] = ReadInt(), ReadInt(), ReadInt(), ReadInt()
	}

	fmt.Println(recur(N, M, Q, as, bs, cs, ds, []int{}))
}

func recur(N, M, Q int, as, bs, cs, ds, A []int) int {
	if len(A) == N {
		ans := 0
		for q := 0; q < Q; q++ {
			if A[bs[q]-1]-A[as[q]-1] == cs[q] {
				ans += ds[q]
			}
		}
		return ans
	}
	prev := 1
	if len(A) > 0 {
		prev = A[len(A)-1]
	}
	ans := 0
	for i := prev; i <= M; i++ {
		ans = Max(ans, recur(N, M, Q, as, bs, cs, ds, append(Dup(A), i)))
	}
	return ans
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

func Dup(xs []int) []int {
	return append([]int{}, xs...)
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
