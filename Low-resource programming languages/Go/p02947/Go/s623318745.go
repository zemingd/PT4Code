// C - Green Bin
// https://atcoder.jp/contests/abc137/tasks/abc137_c
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
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n := nextInt(sc)

	si := []string{}
	for i := 0; i < n; i++ {
		si = append(si, nextString(sc))
		si[i] = SortString(si[i])
	}

	res := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if si[i] == si[j] {
				res++
			}
		}
	}

	fmt.Println(res)
}

func SortString(w string) string {
	s := strings.Split(w, "")
	sort.Strings(s)
	return strings.Join(s, "")
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
