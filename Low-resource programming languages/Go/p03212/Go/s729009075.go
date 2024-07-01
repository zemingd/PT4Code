package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

var n int
var lis = make([]int, 0, 30000)
var r = regexp.MustCompile(`[357]{1,10}`)

func dfs(s int) {
	if s == 0 {
		dfs(10*s + 3)
		dfs(10*s + 5)
		dfs(10*s + 7)
	}
	if r.MatchString(fmt.Sprintf("%d", s)) {
		if s < 1000000000 && s <= n {
			lis = append(lis, s)
			dfs(10*s + 3)
			dfs(10*s + 5)
			dfs(10*s + 7)
		}
	}
}

func main() {
	n = nextInt()
	dfs(0)

	var re int
	for _, item := range lis {
		str := strconv.Itoa(item)
		m := map[rune]int{}
		for _, item := range str {
			m[item]++
		}

		if len(m) >= 3 {
			re++
		}
	}

	fmt.Println(re)
}
