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
	s := nextLine()
	K := nextInt()

	ans := make([]string, 0)
	m := map[string]int{}

	// right := 0
	for left := 0; left < len(s); left++ {
		for right := left; right < len(s); right++ {
			if _, ok := m[s[left:right+1]]; !ok {
				ans = append(ans, s[left:right+1])
				m[s[left:right+1]]++
			}
			// right++

		}

		// if right == left {
		// 	right++
		// }
	}

	sort.Strings(ans)
	if len(ans) >= K {
		fmt.Println(ans[K-1])
	} else {
		fmt.Println(ans[len(ans)-1])
	}

}
