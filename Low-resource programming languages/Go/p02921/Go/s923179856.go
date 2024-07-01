package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

var (
	ans  []int
	tree [][]int
)

func main() {

	var S, T string
	var count int

	fmt.Scan(&S)
	fmt.Scan(&T)

	for i, runeS := range S {
		for j, runeT := range T {
			if i == j && runeS == runeT {
				count++
			}
		}
	}

	fmt.Println(count)
}
