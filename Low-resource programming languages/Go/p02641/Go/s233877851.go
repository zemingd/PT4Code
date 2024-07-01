package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func main() {
	list1 := getStdinIntArr()
	p := getStdinIntArr()
	X := list1[0]
	N := list1[1]

	sort.Ints(p)

	find := true
	index := 0
	for idx, val := range p {
		if val == X {
			find = false
			index = idx
			break
		}
	}
	if find {
		fmt.Printf("%d\n", X)
		return
	}

	prev := 0
	min1 := -math.MaxInt16
	min2 := math.MaxInt16

	prev = p[index]
	find = false
	for i := index - 1; i >= 0; i-- {
		if prev-1 != p[i] {
			min1 = prev - 1
			find = true
			break
		}
		prev = p[i]
	}
	if !find {
		min1 = p[0] - 1
	}

	prev = p[index]
	find = false
	for i := index + 1; i < N; i++ {
		if prev+1 != p[i] {
			min2 = prev + 1
			find = true
			break
		}
		prev = p[i]
	}
	if !find {
		min2 = p[N-1] + 1
	}

	if min1 == -math.MinInt16 {
		fmt.Printf("%d\n", min2)
		return
	}
	if min2 == math.MinInt16 {
		fmt.Printf("%d\n", min1)
		return
	}

	min1abs := X - min1
	min2abs := min2 - X
	if min1 < 0 {
		min1abs = -min1
	}
	if min2 < 0 {
		min2abs = -min2
	}

	if min1abs < min2abs {
		fmt.Printf("%d\n", min1)
	} else {
		fmt.Printf("%d\n", min2)
	}
}

func getStdin() string {
	return readLine()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
}
func getStdinIntArr() []int {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}

func getStdinIntArr64() []int64 {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int64, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.ParseInt(val, 10, 64)
	}
	return rtn
}

func getStdinArr() []string {
	str := getStdin()
	list := strings.Split(str, " ")
	return list
}

func readLine() string {
	buf := make([]byte, 0, 0)
	for {
		l, p, e := sc.ReadLine()
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
