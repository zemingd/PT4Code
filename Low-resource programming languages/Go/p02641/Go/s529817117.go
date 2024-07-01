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

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*1)

func main() {
	list := getStdinIntArr()
	p := getStdinIntArr()
	X := list[0]
	N := list[1]

	sort.Ints(p)

	find := false
	index := 0
	for idx, val := range p {
		if val == X {
			find = true
			index = idx
			break
		}
	}
	if !find {
		fmt.Printf("%d\n", X)
		return
	}

	prev := 0
	left := -math.MaxInt16
	right := math.MaxInt16

	prev = p[index]
	find = false
	for i := index - 1; i >= 0; i-- {
		if prev-1 != p[i] {
			left = prev - 1
			find = true
			break
		}
		prev = p[i]
	}
	if !find {
		left = p[0] - 1
	}

	prev = p[index]
	find = false
	for i := index + 1; i < N; i++ {
		if prev+1 != p[i] {
			right = prev + 1
			find = true
			break
		}
		prev = p[i]
	}
	if !find {
		right = p[N-1] + 1
	}

	leftAbs := X - left
	rightAbs := right - X
	if leftAbs < 0 {
		leftAbs = -leftAbs
	}
	if rightAbs < 0 {
		rightAbs = -rightAbs
	}

	if leftAbs == rightAbs {
		fmt.Printf("%d\n", left)
	} else if leftAbs < rightAbs {
		fmt.Printf("%d\n", left)
	} else {
		fmt.Printf("%d\n", right)
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
func getStdinInt64() int64 {
	str := getStdin()
	rtn, _ := strconv.ParseInt(str, 10, 64)
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

func getStdinArr() []string {
	str := getStdin()
	list := strings.Split(str, " ")
	return list
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
