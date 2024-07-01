package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	arr := make([]int, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range arr {
		sc.Scan()
		arr[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Sort(sort.IntSlice(arr))
	min := 99999999999
	for i := 0; i+K-1 < N; i++ {
		w := arr[i+K-1] - arr[i]
		if w < min {
			min = w
		}
	}
	fmt.Println(min)

}