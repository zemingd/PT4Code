package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var N int
	fmt.Scan(&N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make([]int, N)
	b := make([]int, N)
	for i := 0; i < N; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
		b[i] = a[i]
	}
	sort.Sort(sort.IntSlice(a))
	for i := 0; i < N; i++ {
		if b[i] == a[len(a)-1] {
			fmt.Println(a[len(a)-2])
		} else {
			fmt.Println(a[len(a)-1])
		}
	}
}