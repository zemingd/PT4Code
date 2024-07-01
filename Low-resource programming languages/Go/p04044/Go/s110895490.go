package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	var N, L int
	fmt.Scan(&N, &L)
	a := make([]string, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		sc.Scan()
		a[i] = sc.Text()
	}
	sort.Sort(sort.StringSlice(a))
	for _, v := range a {
		fmt.Println(v)
	}
}