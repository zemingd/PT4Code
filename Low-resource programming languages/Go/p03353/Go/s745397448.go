package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	s := []rune(nextLine())
	K := nextInt()

	ans := make([]string, 0)
	m := map[string]int{}

	// right := 0
	for left := 0; left < len(s); left++ {
		for right := left + 1; right < min(len(s)+1, left+1+K); right++ {

			if _, ok := m[string(s[left:right])]; !ok {
				ans = append(ans, string(s[left:right]))
				m[string(s[left:right])]++
			}

		}

		// if right == left {
		// 	right++
		// }
	}

	sort.Strings(ans)
	fmt.Println(ans[K-1])

}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
