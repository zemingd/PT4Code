package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

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

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	s := nextStr()
	color := strings.Split(s, "")

	//条件1に該当する組み合わせ
	r, g, b := 0, 0, 0
	for i := range color {
		switch color[i] {
		case "R":
			r++
		case "G":
			g++
		case "B":
			b++
		}
	}

	//条件2に該当する組み合わせ
	ex := 0
	for i := 0; i < n-1; i++ {
		for j := i+1; 2*j-i < n; j++ {
			if color[i] != color[j] && color[j] != color[2*j-i] && color[2*j-i] != color[i] {
				ex++
			}
		}
	}
	fmt.Println(r*g*b-ex)
}
