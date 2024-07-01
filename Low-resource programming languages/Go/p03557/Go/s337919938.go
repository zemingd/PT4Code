package main

import (
	"sort"
	"fmt"
	"strings"
	"bufio"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	a, b, c := NextIntArray(), NextIntArray(), NextIntArray()

	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)

	count := 0
	for _, v := range b {
		count += lesserCount(v, a) * largerCount(v, c)
	}
	fmt.Println(count)
}

func largerCount(compared int, list []int) int {
	count := 0
	lis := list
	for len(lis) > 0 {
		if len(lis) == 1 {
			if compared < lis[0] {
				count += 1
			}
			lis = []int{}
		} else {
			left, right := SplitAt(lis, len(lis)/2)
			if compared < right[0] {
				count += len(right)
				lis = left
			} else {
				lis = right
			}
		}
	}
	return count
}

func lesserCount(compared int, list []int) int {
	count := 0
	lis := list
	for len(lis) > 0 {
		if len(lis) == 1 {
			if compared > lis[0] {
				count += 1
			}
			lis = []int{}
		} else {
			left, right := SplitAt(lis, len(lis)/2)
			if left[len(left)-1] < compared {
				count += len(left)
				lis = right
			} else {
				lis = left
			}
		}
	}
	return count
}

func SplitAt(list []int, i int) ([]int, []int) {
	if len(list) <= 1 {
		return list, []int{}
	} else if len(list) <= 3 {
		return list[0:1], list[1:]
	} else {
		r1, r2 := list[0:i-1], list[i-1:]
		return r1, r2
	}
}

// reader

var size = 1000000
var rdr = bufio.NewReaderSize(os.Stdin, size)

func ReadLine() string {
	buf := make([]byte, 0, size)
	for {
		line, isPrefix, err := rdr.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, line...)
		if !isPrefix {
			break
		}
	}
	return string(buf)
}

func NextArray() []string {
	s := ReadLine()
	return strings.Split(s, " ")
}

func NextIntArray() []int {
	a := NextArray()
	na := make([]int, 0)

	for _, v := range a {
		if n, e := strconv.Atoi(v); e == nil {
			na = append(na, n)
		}
	}

	return na
}
