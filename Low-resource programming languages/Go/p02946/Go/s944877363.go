package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func mapToString(a []int) []string {
	len := len(a)
	r := make([]string, len)
	for i := 0; i < len; i++ {
		r[i] = strconv.Itoa(a[i])
	}
	return r
}

func printIntList(args []int) {
	strA := mapToString(args)
	fmt.Println(strings.Join(strA, " "))
}

func main() {
	sc.Split(bufio.ScanWords)
	K, X := nextInt(), nextInt()
	// fmt.Println(K, X)
	start := X - (K - 1)
	end := X + (K - 1)
	ans := make([]int, 0)
	for i := start; i <= end; i++ {
		// fmt.Printf("%d ", i)
		ans = append(ans, i)
	}
	printIntList(ans)
}
