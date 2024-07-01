package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
	"unicode/utf8"
)

var debug = false

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var target string
	if sc.Scan() {
		target = sc.Text()
	}

	res := GetAnswer(target)
	fmt.Printf("%v\n", res)
}

// GetAnswer ...
func GetAnswer(target string) int {
	prt("inputs: target:%#v", target)
	tint, _ := strconv.Atoi(target)
	sqrt := math.Sqrt(float64(tint))
	dummya := int(math.Ceil(sqrt))
	a, b := 0, 0
	for i := dummya; i > 0; i-- {
		if tint%i == 0 {
			a = i
			b = tint / i
			break
		}
	}
	prt("a: %v b:%v", a, b)
	stra := strconv.Itoa(a)
	strb := strconv.Itoa(b)
	dgta := utf8.RuneCountInString(stra)
	dgtb := utf8.RuneCountInString(strb)
	prt("da: %v db:%v", dgta, dgtb)
	result := 0
	result = dgta
	if dgta < dgtb {
		result = dgtb
	}

	return result
}

func prt(format string, inputs ...interface{}) {
	if debug {
		fmt.Printf(format+"\n", inputs...)
	}
}