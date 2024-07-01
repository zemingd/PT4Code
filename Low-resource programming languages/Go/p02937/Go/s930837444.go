package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"strings"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wtr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ { res[i] = scanInt() }
	return res
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func printInts(a ...int) {
	for i, e := range a {
		fmt.Fprint(wtr, e)
		if i != len(a)-1 {
			fmt.Fprint(wtr, " ")
		}
	}
	fmt.Fprintln(wtr)
	wtr.Flush()
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 100000000)

	s,t := scanText(), scanText()

	n := len(s)
	ss := s+s

	next := make([][]int, 26)

	for i := 0; i < 26; i++ {
		next[i] = make([]int, 2*n+1)
		index := strings.Index(ss, string('a'+i))+1
		j := 0
		for index != -1 {
			next[i][j] = index
			index--
			j++
			if index == 0 {
				index = strings.Index(ss[j:], string('a'+i))+1
			}
		}
	}

	// fmt.Println(t)

	// for i := 0; i < 26; i++ {
	// 	fmt.Print(string('a'+i)+":")
	// 	fmt.Println(next[i])
	// }

	p := int64(0)
	for _, e := range t {
		index := next[e-'a'][p%int64(n)]
		if index == 0 {
			p = -1
			break
		}
		p+=int64(index)
	}

	fmt.Println(p)

	
}
