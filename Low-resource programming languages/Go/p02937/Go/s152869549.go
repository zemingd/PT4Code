package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	str := sc.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	s, t := nextWord(), nextWord()
	ans := solve(s, t)
	fmt.Println(ans)
}

func solve(s, t string) int {

	for _, tc := range t {
		if !strings.Contains(s, string(tc)) {
			return -1
			break
		}
	}

	var char [27][]int
	for i := 0; i < len(s); i++ {
		char[s[i]-"a"[0]] = append(char[s[i]-"a"[0]], i)
	}
	for i := 0; i < len(s); i++ {
		char[s[i]-"a"[0]] = append(char[s[i]-"a"[0]], i+len(s))
	}

	ans := 0
	p := 0

	for i := 0; i < len(t); i++ {
		j := lowerBound(char[t[i]-"a"[0]], p, 0, len(char[t[i]-"a"[0]]))
		p = char[t[i]-"a"[0]][j] + 1
		//		fmt.Println(string(t[i]), t[i], " ", char[t[i]-"a"[0]], " ", p)
		if p >= len(s) {
			p -= len(s)
			ans += len(s)
		}
	}

	ans += p

	return ans
}

func lowerBound(v []int, m int, min int, max int) int {
	if max < min {
		return min
	} else {
		mid := min + (max-min)/2
		if v[mid] > m {
			return lowerBound(v, m, min, mid-1)
		} else if v[mid] < m {
			return lowerBound(v, m, min+1, max)
		} else {
			return mid
		}
	}
}
