package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {

	var n, k int
	fmt.Scan(&n, &k)

	pList := make([]int, n)

	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		pList[i] = nextInt()
	}

	sort.SliceStable(pList, func(i, j int) bool { return pList[i] < pList[j] })

	sum := 0
	for _, x := range pList[:k] {
		sum += x
	}

	fmt.Println(sum)
}
