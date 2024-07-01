package main

import (
"bufio"
"fmt"
"os"
"strconv"
"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	nm := strings.Fields(nextLine())
	//n, _ := strconv.Atoi(nm[0])
	m, _ := strconv.Atoi(nm[1])
	tmp := []int{}
	for i := 0; i < m; i++ {
		lr := strings.Fields(nextLine())
		l, _ := strconv.Atoi(lr[0])
		r, _ := strconv.Atoi(lr[1])
		var intSlice []int
		for i := l; i <= r ; i++ {
			intSlice = append(intSlice, i)
		}
		if len(tmp) != 0 {
			tmp = makeIntersection(tmp, intSlice)
		} else {
			tmp = intSlice
		}
	}
	fmt.Println(len(tmp))
}

// n がスライスに含まれているか
func member(n int, xs []int) bool {
	for _, x := range xs {
		if n == x {
			return true
		}
	}
	return false
}

func makeIntersection(set1, set2 []int) []int {
	set := []int{}
	//set1の各要素がset2に含まれていた場合setに格納
	for _, c := range set1 {
		if member(c, set2) {
			set = append(set, c)
		}
	}
	return set
}
