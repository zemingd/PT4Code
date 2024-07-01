package main

import (
	"bufio"
	"os"
	"strconv"
	"sort"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	k := nextInt()

	list := make([]int, n)
	for i := 0; i < n; i++ {
		list[i] = nextInt()
	}
	sort.Ints(list)


	diff := 10000000000
	for i := 0; i < (n - k + 1); i++ {
		d := list[i+k-1] - list[i]
		if d < diff {
			diff = d
		}
	}
	fmt.Println(diff)
}
