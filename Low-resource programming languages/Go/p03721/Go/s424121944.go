package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

type set struct {
	a, b int
}

type setList []set

func (a setList) Len() int           { return len(a) }
func (a setList) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a setList) Less(i, j int) bool { return a[i].a < a[j].a }

func main() {
	sc.Split(bufio.ScanWords)

	N, K := scanInt(), scanInt()
	L := make(setList, N)
	for i := 0; i < N; i++ {
		L[i].a, L[i].b = scanInt(), scanInt()
	}
	sort.Sort(L)

	cnt := 0
	for _, l := range L {
		cnt += l.b
		if cnt >= K {
			fmt.Println(l.a)
			return
		}
	}
}
