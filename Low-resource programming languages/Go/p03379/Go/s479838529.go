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
	h := make([]int, N)
	x := make([]int, N)
	for i := range h {
		sc.Scan()
		h[i], _ = strconv.Atoi(sc.Text())
		x[i] = h[i]
	}
	sort.Ints(h)
	for i := 0; i < N; i++ {
		if h[N/2] > x[i] {
			fmt.Println(h[N/2])
		} else {
			fmt.Println(h[N/2-1])
		}
	}
}