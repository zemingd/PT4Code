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
	result := "Yes"

	targetArray := [][]int{}
	targetArray = append(targetArray, []int{0, 0, 0})
	for _, t := range targets {
		arr := getIntArray(t)
		targetArray = append(targetArray, arr)
	}
	prt("targetArr: %v", targetArray)

	for i := 0; i <= n-1; i++ {
		pos := math.Abs(float64(targetArray[i+1][1]-targetArray[i][1])) + math.Abs(float64(targetArray[i+1][2]-targetArray[i][2]))
		ntime := targetArray[i+1][0] - targetArray[i][0]
		prt("pos: %d, ntime:%d", int(pos), ntime)
		if int(pos) > ntime {
			result = "No"
			break
		}
		if int(pos)%2 != ntime%2 {
			result = "No"
			break
		}
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