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

	N := nextInt()

	s := make([][]string, N)
	for i := 0; i < N; i++ {
		s[i] = strings.Split(nextLine(), "")

	}

	m := map[string]int{}

	ans := 0
	for i := 0; i < N; i++ {
		sort.Strings(s[i])
		ss := strings.Join(s[i], "")
		if _, ok := m[ss]; !ok {
			m[ss] = 1
		} else {
			ans += m[ss]
			m[ss]++
		}
	}

	fmt.Println(ans)

}
