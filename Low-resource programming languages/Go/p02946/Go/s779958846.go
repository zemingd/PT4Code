package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	k := readInt()
	x := readInt()
	answer := solve(k, x)
	sort.Ints(answer)
	for _, a := range answer {
		fmt.Printf("%d ", a)
	}
	fmt.Println("")
}

func solve(k, x int) []int {
	var answer []int
	for i := x - k + 1; i < x + k; i++ {
		answer = append(answer, i)
	}
	return answer
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}
