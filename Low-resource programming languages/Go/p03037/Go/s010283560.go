package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000009
)

var buf []byte = make([]byte, maxBufSize)
var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBufSize)
}

func main() {
	N := nextInt()
	M := nextInt()
	m := make(map[int]int)
	keys := make([]int, 0, N)
	pass := make([]int, 100000)
	maxcount := 0
	tmp := 0
	ans := 0
	for i := 0; i < M; i++ {
		L := nextInt()
		m[L] = nextInt()
	}
	for k := range m {
		keys = append(keys, k)
	}
	// sort.Ints(keys)
	// fmt.Println(keys, m)
	for row, L := range keys {
		for i := L - 1; i <= m[L]-1; i++ {
			// fmt.Println(L, i)
			if pass[i] == maxcount {
				pass[i]++
				tmp = pass[i]
				if row == M-1 {
					ans++
				}
			}
		}
		maxcount = tmp
	}
	fmt.Println(ans)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}