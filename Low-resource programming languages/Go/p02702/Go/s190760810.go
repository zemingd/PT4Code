package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	return s
}

func isMultipleOf2019(i int) bool {
	if i%2019 == 0 {
		return true
	} else {
		return false
	}
}

func dfs(s string, start int) {
	if (len(s) - start) <= 0 {
		return
	}
	lastIndex := start + 4
	for ; lastIndex <= len(s); lastIndex++ {
		v := s[start:lastIndex]
		num, _ := strconv.Atoi(v)
		if isMultipleOf2019(num) {
			multipleOf2019++
		}
	}
	dfs(s, start+1)
}

var multipleOf2019 int

func main() {
	sc.Split(bufio.ScanWords)
	s := nextString()
	if len(s) < 4 {
		fmt.Println(0)
		return
	}
	dfs(s, 0)
	fmt.Println(multipleOf2019)
}
