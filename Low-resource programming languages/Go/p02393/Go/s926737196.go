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
	sc.Split(bufio.ScanWords)
	a := make([]int, 3)
	for i := 0; i < 3; i++ {
		a[i] = nextInt()
	}
	sort.Sort(sort.IntSlice(a))
	for i := 0; i < 3; i++ {
		fmt.Printf("%v", a[i])
		if i == 2 {
			fmt.Println()
		} else {
			fmt.Printf(" ")
		}
	}
}

