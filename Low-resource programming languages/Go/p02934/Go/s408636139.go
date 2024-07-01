package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	str := sc.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var a []int
	for i := 0; i < n; i++ {
		a = append(a, nextInt())
	}
	ans := solve(a)
	fmt.Println(ans)
}

func solve(a []int) float64 {
	result := 0.0
	for _, ai := range a {
		result += 1.0 / float64(ai)
	}
	result = 1.0 / result
	return result
}
