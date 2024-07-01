package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func getInt() int {
	s.Scan()
	a, _ := strconv.Atoi(s.Text())
	return a
}

func main() {
	s.Split(bufio.ScanWords)
	a, b := getInt(), getInt()

	num := []int{a + b, a - b, a * b}

	sort.Ints(num)

	n := len(num)

	fmt.Println(num[n-1])

}
