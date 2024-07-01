package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	peakCount, loadsCount := nextInt(), nextInt()
	var peaks = map[int]int{}
	var betterPeaks = map[int]bool{}
	for n := 1; n <= peakCount; n++ {
		height := nextInt()
		peaks[n] = height
		betterPeaks[n] = true
	}
	for m := 0; m < loadsCount; m++ {
		peakNoA, peakNoB := nextInt(), nextInt()
		if peaks[peakNoA] < peaks[peakNoB] {
			lowerPeasNo := peakNoA
			betterPeaks[lowerPeasNo] = false
		} else {
			lowerPeasNo := peakNoB
			betterPeaks[lowerPeasNo] = false
		}
	}
	var betterPeakCount int
	for _, v := range betterPeaks {
		if v {
			betterPeakCount++
		}
	}
	fmt.Println(betterPeakCount)
}
