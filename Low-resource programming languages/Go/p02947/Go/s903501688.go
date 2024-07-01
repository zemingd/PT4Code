package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

// 速い標準入力 https://qiita.com/tnoda_/items/b503a72eac82862d30c6
var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	n := nextInt()
	var sAry = make([]string, n)
	for i := 0; i < n; i++ {
		sAry[i] = nextLine()
	}

	m := map[string]int{}
	for i := 0; i < n; i++ {
		A := strings.Split(sAry[i], "")
		sort.Strings(A)
		s := strings.Join(A, "")
		m[s]++
	}

	ret := 0
	for key := range m {
		ret += (m[key] * (1 + m[key]) / 2)
	}
	fmt.Println(ret)
}
