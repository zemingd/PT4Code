package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n := nextInt()

	vArray := make([]int, n)
	for i := 0; i < n; i++ {
		vArray[i] = nextInt()
	}
	sort.Sort(sort.IntSlice(vArray))

	ans := float64(vArray[0])
	vArray = vArray[1:]
	for len(vArray) > 0 {
		ans = (ans + float64(vArray[0])) / 2.0
		vArray = vArray[1:]
	}

	fmt.Println(ans)
}
