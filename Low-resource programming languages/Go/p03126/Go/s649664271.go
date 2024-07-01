package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()
	m := readInt()
	
	var types []int
	for i := 0; i < m; i++ {
		types = append(types, 0)
	}
	for i := 0; i < n; i++ {
		// person
		k := readInt()
		for j := 0; j < k; j++ {
			// type
			x := readInt() - 1
			types[x] = types[x] + 1
		}
	}
	
	var answer int
	for i := 0; i < m; i++ {
		if types[i] == n {
			answer++
		}
	}
	fmt.Println(answer)
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}

func solve(s, t string) (answer string) {
	answer = "You will lose"
	for i := 0; i < len([]rune(s)); i++ {
		_s := string([]rune(s)[i : i+1])
		_t := string([]rune(t)[i : i+1])
		if !match(_s, _t) {
			return
		}
	}
	answer = "You can win"
	return
}

func match(s, t string) bool {
	if s == "@" || t == "@" {
		if s == "@" && strings.Contains("atcoder@", t) {
			return true
		}
		if t == "@" && strings.Contains("atcoder@", s) {
			return true
		}
		return false
	} else if s != t {
		return false
	}
	return true
}
