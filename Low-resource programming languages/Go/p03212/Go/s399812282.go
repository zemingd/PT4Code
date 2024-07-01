package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

var c = 0

func main() {
	sc.Split(bufio.ScanWords)
	s := stringLineScan()
	n, _ := strconv.Atoi(s)
	for i := 1; i <= len(s); i++ {
		stringPermutations("753", i, "", n)
	}
	fmt.Println(c)
}
func stringPermutations(iterString string, iterNum int, seed string, lim int) {
	if len(seed) == iterNum {
		if x, _ := strconv.Atoi(seed); judge753(seed) && x <= lim {
			c++
		}
	} else {
		for _, s := range iterString {
			stringPermutations(iterString, iterNum, seed+string(s), lim)
		}
	}
}
func judge753(numString string) bool {
	a := 0
	b := 0
	c := 0
	for i := 0; i < len(numString); i++ {
		if string(numString[i]) == "3" {
			a = 1
		} else if string(numString[i]) == "5" {
			b = 1
		} else if string(numString[i]) == "7" {
			c = 1
		}
	}
	if a+b+c == 3 {
		return true
	} else {
		return false
	}
}
