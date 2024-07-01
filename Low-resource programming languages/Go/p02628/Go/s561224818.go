package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func sliceAtoi(arr []string, length int) []int {
	si := make([]int, 0, length)
	for _, a := range arr {
		i, _ := strconv.Atoi(a)
		si = append(si, i)
	}
	return si
}

func main() {
	a, b := nextLine(), nextLine()
	arr := strings.Split(a, " ")
	n, _ := strconv.Atoi(arr[0])
	k, _ := strconv.Atoi(arr[1])

	p := sliceAtoi(strings.Split(b, " "), n)
	sort.Sort(sort.IntSlice(p))

	sum := 0
	for _, x := range p[0:k] {
		sum += x
	}
	fmt.Println(sum)
}
