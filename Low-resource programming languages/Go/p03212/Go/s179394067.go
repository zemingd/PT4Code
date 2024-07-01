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

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func parseInt(s string) (n int) {
	n, _ = strconv.Atoi(s)
	return
}

var count int

func dfs(s string, n int) {
	if parseInt(s) > n {

	} else {
		if strings.Contains(s, "7") && strings.Contains(s, "5") && strings.Contains(s, "3") {
			count++
		}
		dfs(s+"3", n)
		dfs(s+"5", n)
		dfs(s+"7", n)
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	n := getInt()

	dfs("3", n)
	dfs("5", n)
	dfs("7", n)

	fmt.Print(count)
}
