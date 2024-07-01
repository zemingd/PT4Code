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

	list := make([]int, 3)

	for i := 0; i < 3; i ++ {
		list[i] = nextInt()
	}
	sort.Ints(list)

	sum := (list[2] - list[1]) + (list[1] - list[0])
	fmt.Println(sum)
}
