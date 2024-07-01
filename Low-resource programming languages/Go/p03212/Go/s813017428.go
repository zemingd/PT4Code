package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	N, _ := strconv.Atoi(nextLine())
	fmt.Println(dfs("0", N))
}

func dfs(s string, n int) int {
	sInt, _ := strconv.Atoi(s)
	if sInt > n {
		return 0
	}
	var ret int
	if strings.Contains(s, "3") && strings.Contains(s, "5") && strings.Contains(s, "7") {
		ret = 1
	} else {
		ret = 0
	}
	for _, c := range []string{"3", "5", "7"} {
		ret += dfs(s+c, n)
	}
	return ret
}
