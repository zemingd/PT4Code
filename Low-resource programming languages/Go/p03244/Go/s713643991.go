package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readStrings() []string {
	return strings.Split(readString(), " ")
}

func readInt() int {
	n, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return n
}

func readInts() []int {
	line := readStrings()
	ints := make([]int, 0)
	for _, s := range line {
		val, err := strconv.Atoi(s)
		if err != nil {
			panic(err)
		}
		ints = append(ints, val)
	}
	return ints
}

func main() {
	// Input
	n := readInt()

	v := readInts()
	me, mo := map[int]int{}, map[int]int{}
	for i := range v {
		if i%2 == 0 {
			mo[v[i]]++
		} else {
			me[v[i]]++
		}
	}

	// Case1: even max key == odd max key
	e_key1, e_cnt1 := max(me)
	o_key1, o_cnt1 := max(mo)
	if o_key1 != e_key1 {
		fmt.Println(n - e_cnt1 - o_cnt1)
		return
	}

	// Case2: even max key != odd max key
	me[e_key1] = 0
	mo[o_key1] = 0
	_, e_cnt2 := max(me)
	_, o_cnt2 := max(mo)
	a1 := n - e_cnt2 - o_cnt1
	a2 := n - e_cnt1 - o_cnt2
	if a1 < a2 {
		fmt.Println(a1)
	} else {
		fmt.Println(a2)
	}
}

func max(m map[int]int) (int, int) {
	maxKey := 0
	maxCnt := 0
	for k, v := range m {
		if maxCnt < v {
			maxKey = k
			maxCnt = v
		}
	}
	return maxKey, maxCnt
}