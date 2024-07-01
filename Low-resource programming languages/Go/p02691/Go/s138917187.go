package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var p [1000000]int

var cnt = 0
var length = 0
var N=0
var MAX = 0
var pb[1000000]bool


func abs(p1, p2 int) int {
	//	if p1 > p2 {
	//		return p1 - p2
	//	}
	return p2 - p1
}

func check(p1, p2 int) bool {
	r := abs(p1, p2) == p[p1]+p[p2]
	return r
}

func check2(idx int) int {
	ret := 0
	for i := idx + p[idx]; i < length; i++ {
		if i-idx == p[idx]+p[i] {
			ret++
		}
	}
	return ret
}
func check3() int {
	ret := 0
	var i, i2, i3 int
	for i = 0; i < length; i++ {
		if pb[i]{
			continue
		}
		for i2 = i + 1; i2 < length; i2++ {
			if pb[i2]{
				continue
			}
			i3 = i2 - i
			if p[i] > i3 {
				continue
			}
			if p[i2] > i3 {
				continue
			}
			if i2-i == p[i2]+p[i] {
				ret++
			}
		}
		//	ret = ret + check2(i)

	}
	return ret
}

func initdata(str string) {
	l := strings.Split(str, " ")
	length = len(l)
	N= length 
	MAX = N -1

	
	//	p = make([]int, len(l))
	for i, v := range l {
		a, _ := strconv.Atoi(v)
		p[i] = a
		if  a >= MAX {
			pb[i] = true
		}

	}

}

var test = []string{"1",
	"5 2 4 2 8 8",
}
var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
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

func main() {
	readLine()
	initdata(readLine())

	fmt.Println(check3())

}
