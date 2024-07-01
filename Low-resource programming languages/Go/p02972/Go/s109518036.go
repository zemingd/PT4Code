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
	a := make([]int, n+1)
	for i, v := range readInts() {
		a[i+1] = v
	}

	b := make([]int, n+1)
	for i := n; i >= 1; i-- {
		var sum int
		for j := i + i; j <= n; j += i {
			sum ^= b[j]
		}
		b[i] = sum ^ a[i]
	}

	var ans []int
	for i := 1; i <= n; i++ {
		if b[i] == 1 {
			ans = append(ans, i)
		}
	}
	fmt.Println(len(ans))
	for _, v := range ans {
		fmt.Print(v, "")
	}
	fmt.Println("")
}
