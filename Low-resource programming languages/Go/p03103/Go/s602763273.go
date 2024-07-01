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

type drink struct {
	A, B int
}
type drinkList []drink

func (a drinkList) Len() int           { return len(a) }
func (a drinkList) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a drinkList) Less(i, j int) bool { return a[i].A < a[j].A }

func main() {
	sc.Split(bufio.ScanWords)

	N, M := scanInt(), scanInt()
	L := make(drinkList, N)
	for i := 0; i < N; i++ {
		L[i].A, L[i].B = scanInt(), scanInt()
	}
	sort.Sort(L)

	ans := 0
	for _, l := range L {
		if l.B <= M {
			ans += l.A * l.B
			M -= l.B
		} else {
			ans += l.A * M
			break
		}
	}
	fmt.Println(ans)
}
