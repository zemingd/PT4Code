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
	n := readInts()
	k := n[0]
	x := n[1]

	ans := make([]int, 0)

	s := x - (k - 1)
	if s < -1000000 {
		s = -100000
	}
	for i := 0; i < k*2-1; i++ {
		ans = append(ans, s)
		s++
	}

	for i, v := range ans {
		if i == len(ans)-1 {
			fmt.Println(v)
		} else {
			fmt.Print(fmt.Sprint(v) + " ")
		}
	}

}
