package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	var arr = make([]string, n, n)

	for i := 0; i < n; i++ {
		arr[i] = nextLine()
	}

	sort.Strings(arr)
	fmt.Println(strings.Join(arr, ""))
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}
