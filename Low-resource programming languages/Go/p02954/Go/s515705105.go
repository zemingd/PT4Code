package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

// input に使うやつ
var rdr = bufio.NewReaderSize(os.Stdin, 10000)

func readLine() string {
	buf := make([]byte, 0, 10000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

// string から int へ
func atoi(s string) int {
	i, _ := strconv.Atoi(s)
	return i
}

// 一つの文字を int として読み込み
func readInt() int {
	return atoi(readLine())
}

// 複数の文字を int のスライスとして読み込み
func readInts() []int {
	in := readLine()
	ins := strings.Split(in, " ")
	out := make([]int, len(ins))
	for i, v := range ins {
		out[i] = atoi(v)
	}
	return out
}

// sortしたスライスを返す
func sorted(a []int) []int {
	b := make([]int, len(a))
	copy(b, a)
	sort.Ints(b)
	return b
}

// 逆順のsort
func reverse(a []int) []int {
	b := make([]int, len(a))
	copy(b, a)
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	return b
}

func main() {
	s := strings.Split(readLine(), "")
	n := len(s)
	ans := make([]int, len(s))
	// for i := 0; i < len(ans); i++ {
	// 	ans[i] = 1
	// }
	for i := 0; i < 2; i++ {
		var c int
		for j := 0; j < n; j++ {
			if s[j] == "R" {
				c++
			} else {
				ans[j] += c / 2
				ans[j-1] += (c + 1) / 2
				c = 0
			}
		}

		ansc := make([]int, n)
		sc := make([]string, n)
		copy(ansc, ans)
		copy(sc, s)
		for j := 0; j < n; j++ {
			ans[j] = ansc[n-1-j]
		}
		for j := 0; j < n; j++ {
			s[j] = sc[n-1-j]
		}
		for j := 0; j < n; j++ {
			if s[j] == "L" {
				s[j] = "R"
			} else {
				s[j] = "L"
			}
		}
	}

	for i := 0; i < len(ans)-1; i++ {
		fmt.Print(fmt.Sprint(ans[i]) + " ")
	}
	fmt.Println(ans[len(ans)-1])
}
