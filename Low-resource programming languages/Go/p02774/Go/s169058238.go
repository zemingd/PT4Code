package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	l := (n * (n - 1)) / 2

	ans := make([]int, l)

	reader := bufio.NewReaderSize(os.Stdin, 2*1e6)
	str, _, _ := reader.ReadLine()
	ss := strings.Split(string(str), " ")

	var c int
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			a, _ := strconv.Atoi(ss[i])
			b, _ := strconv.Atoi(ss[j])
			ans[c] = a * b
			c++
		}
	}
	sort.Ints(ans)

	fmt.Println(ans[k-1])
}
