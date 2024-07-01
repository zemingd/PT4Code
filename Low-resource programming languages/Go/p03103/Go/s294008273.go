package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type shop struct {
	a int
	b int
}

func main() {
	N, M := ReadInt(), ReadInt()
	shops := make([]shop, N)
	for i := 0; i < N; i++ {
		shops[i].a, shops[i].b = ReadInt(), ReadInt()
	}

	sort.Slice(shops, func(i, j int) bool {
		return shops[i].a < shops[j].a
	})

	ans := 0
	for i := 0; M > 0; i++ {
		c := Min(M, shops[i].b)
		M -= c
		ans += c * shops[i].a
	}
	fmt.Println(ans)
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
