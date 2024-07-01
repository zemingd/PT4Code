package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func receiveInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func removeDuplicates(a []int) []int {
	sort.Ints(a)
	j := 0
	for i := 1; i < len(a); i++ {
		if a[j] == a[i] {
			continue
		}
		j++
		a[j] = a[i]
	}
	return a[:j+1]
}

func main() {
	sc.Split(bufio.ScanWords)
	n := receiveInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = receiveInt()
	}
	sort.Ints(a)

	fmt.Println(len(removeDuplicates(a)))
}
