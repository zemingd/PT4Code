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

	nItems := scanInt(sc)
	items := make([]float64, nItems)
	for i := 0; i < nItems; i++ {
		items[i] = float64(scanInt(sc))
	}

	sort.Float64s(items)

	item := items[0]
	for i := 1; i < nItems; i++ {
		item = (item + items[i]) / 2
	}
	fmt.Println(item)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
