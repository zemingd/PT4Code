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
	sort.Ints(a)
	b := a
	return b
}

// 逆順のsort
func reverse(a []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	b := a
	return b
}

func main() {
	n := readInt()
	a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = readInt()
		b[i] = a[i]
	}

	s := reverse(b)

	for i := 0; i < n; i++ {
		for j := 0; j < n-1; j++ {
			if a[i] != s[j] {
				fmt.Println(s[j])
				break
			}
			if a[i] == s[j] && a[i] == s[j+1] {
				fmt.Println(s[j])
				break
			}
			if a[i] == s[j] && a[i] != s[j+1] {
				fmt.Println(s[j+1])
				break
			}
		}
	}
}
