package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//Util
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

//Main
var sc = bufio.NewScanner(os.Stdin)
var n int
var s string
var rgb RGB

type RGB struct {
	r []int
	g []int
	b []int
}

func main() {
	sc.Split(bufio.ScanWords)
	n = nextInt()
	s = nextStr()

	for i := 0; i < n; i++ {
		switch string(s[i]) {
		case "R":
			rgb.r = append(rgb.r, i+1)
		case "B":
			rgb.b = append(rgb.b, i+1)
		case "G":
			rgb.g = append(rgb.g, i+1)
		}

	}

	ans := 0
	for _, r := range rgb.r {
		for _, g := range rgb.g {
			for _, b := range rgb.b {
				k := maxInt(r, maxInt(g, b))
				i := minInt(r, minInt(g, b))
				j := r + g + b - i - k
				//fmt.Println(r, g, b, i, j, k)
				if j-i != k-j {
					ans++
				}
			}
		}
	}
	fmt.Println(ans)
}
