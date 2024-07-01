package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	var s, t string
	fmt.Scan(&s, &t)

	structure := make(map[rune][]int)
	for r := 'a'; r <= 'z'; r++ {
		structure[r] = make([]int, 0)
	}

	for i, rs := range s {
		structure[rs] = append(structure[rs], i+1)
	}

	n := len(s)
	ans := 0
	for _, rt := range t {
		if len(structure[rt]) == 0 {
			ans = -1
			break
		}
		baseIndex := (ans % n) + 1
		var searchIndex int
		switch {
		case sort.SearchInts(structure[rt], baseIndex) == len(structure[rt]):
			searchIndex = n + structure[rt][0]
		default:
			searchIndex = structure[rt][sort.SearchInts(structure[rt], baseIndex)]
		}
		ans += searchIndex - baseIndex + 1
	}

	fmt.Println(ans)
}
