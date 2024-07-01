package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	var minC, maxC int
	var ans int64
	parts := make([][]int, 3)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	for i := range parts {
		parts[i] = make([]int, n)
		for j := range parts[i] {
			sc.Scan()
			parts[i][j], _ = strconv.Atoi(sc.Text())
		}
		sort.Ints(parts[i])
	}
	for _, p := range parts[1] {
		minC = sort.SearchInts(parts[0], p)
		maxC = n - sort.SearchInts(parts[2], p+1)
		ans += int64(minC * maxC)
	}
	fmt.Println(ans)
}