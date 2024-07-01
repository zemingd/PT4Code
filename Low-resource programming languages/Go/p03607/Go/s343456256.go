package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	memo := make(map[int]int)
	n, _ := strconv.Atoi(nextLine())
	for i := 0; i < n; i++ {
		a, _ := strconv.Atoi(nextLine())
		memo[a] = (memo[a] + 1) % 2
	}
	ret := 0
	for _, v := range memo {
		ret += v
	}
	fmt.Println(ret)
}
