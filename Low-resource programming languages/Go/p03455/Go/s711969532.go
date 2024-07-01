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
	if sc.Scan() {
		n, _ = strconv.Atoi(sc.Text())
	}
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
	result := "Yes"
	stx := 0
	sty := 0
	pasttime := 0

	for i, t := range targets {
		if i >= n {
			break
		}
		prt("loop: %d, target: %v", i, t)
		tarr := getIntArray(t)
		prt("start: (%v, %v) Dest: (%v, %v)", stx, sty, tarr[1], tarr[2])
		pos := math.Abs(float64(tarr[1]-stx)) + math.Abs(float64(tarr[2]-sty))
		prt("pos: %d, past:%d", int(pos), pasttime)
		if int(pos) > (tarr[0] - pasttime) {
			result = "No"
			break
		}
		if (tarr[0]-pasttime)%2 != int(pos)%2 {
			result = "No"
			break
		}
		pasttime = tarr[0]
		stx = tarr[1]
		sty = tarr[2]
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