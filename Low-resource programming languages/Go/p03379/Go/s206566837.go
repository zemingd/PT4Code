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
	X := make([]int, N)
	XC := make([]int, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range X {
		sc.Scan()
		X[i], _ = strconv.Atoi(sc.Text())
		XC[i] = X[i]
	}
	sort.Ints(X)
	m1 := X[len(X)/2-1]
	m2 := X[len(X)/2]

	for i := 0; i < len(XC); i++ {
		if XC[i] <= m1 {
			fmt.Println(m2)
		} else {
			fmt.Println(m1)
		}
	}
}
