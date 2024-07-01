package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var scan = bufio.NewScanner(os.Stdin)

func main() {
	scanWords()

	list := make([]int, 0, 3)
	for i := 0; i < cap(list); i++ {
		list = append(list, readNextInt())
	}

	sort.Sort(sort.IntSlice(list))
	fmt.Printf("%d %d %d\n", list[0], list[1], list[2])
}

func scanWords() {
	scan.Split(bufio.ScanWords)
}

func readNextInt() int {
	scan.Scan()

	input, err := strconv.Atoi(scan.Text())
	if err != nil {
		panic(err)
	}

	return input
}

