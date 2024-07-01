package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var debug = false

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n int
	fmt.Scanf("%s", &n)
	var targets []string
	for i := 0; i < n; i++ {
		if sc.Scan() {
			targets = append(targets, sc.Text())
		}
	}

	res := GetAnswer(n, targets)
	fmt.Printf("%v\n", res)
}

// GetAnswer ...
func GetAnswer(n int, targets []string) string {
	prt("inputs: n:%v targets:%#v", n, targets)
	result := "No"
	stx := 0
	sty := 0
	count := 0
	pasttime := 0
	for _, t := range targets {
		prt("target: %v", t)
		tarr := getIntArray(t)
		pos := math.Abs(float64((tarr[1] - stx)) + math.Abs(float64(tarr[2]-sty)))
		prt("pos: %d", int(pos))
		if (tarr[0]-pasttime)%2 == int(pos)%2 && int(pos) <= (tarr[0]-pasttime) {
			count++
			stx = tarr[1]
			sty = tarr[2]
			pasttime += tarr[0]
		}
		prt("count: %d", count)
	}
	if n == count {
		result = "Yes"
	}
	return result
}

func getIntArray(str string) []int {
	strarr := strings.Split(str, " ")
	intarr := []int{}
	for _, st := range strarr {
		ti, _ := strconv.Atoi(st)
		intarr = append(intarr, ti)
	}
	return intarr
}

func prt(format string, inputs ...interface{}) {
	if debug {
		fmt.Printf(format+"\n", inputs...)
	}
}