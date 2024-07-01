package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

//============================================================
var sc = bufio.NewScanner(os.Stdin)

func setScSplit() { sc.Split(bufio.ScanWords) }

func readStr() string {
	sc.Scan()

	return sc.Text()
}

func readInt() int {
	i, _ := strconv.Atoi(readStr())

	return i
}

func readFloat() float64 {
	f, _ := strconv.ParseFloat(readStr(), 64)

	return f
}

//=============================================================

func main() {
	setScSplit()

	N := readInt()
	s := make([]int, N)

	for i := 0; i < N; i++ {
		d := readInt()
		s[i] = d
	}

	sort.Sort(sort.Reverse(sort.IntSlice(s)))

	res := 1
	for i := 1; i < N; i++ {
		if s[i-1] != s[i] {
			res++
		}
	}

	fmt.Println(res)
}