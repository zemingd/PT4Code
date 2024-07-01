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

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func main() {
	sc.Split(bufio.ScanWords)
	peakCount, loadsCount := nextInt(), nextInt()
	var goodPeaks = map[int]int{}
	for n := 1; n <= peakCount; n++ {
		goodPeaks[n] = nextInt()
	}
	for m := 0; m < loadsCount; m++ {
		peakNoA, peakNoB := nextInt(), nextInt()
		// 低い方を除く
		if goodPeaks[peakNoA] < goodPeaks[peakNoB] {
			goodPeaks[peakNoA] = goodPeaks[peakNoB]
		} else {
			goodPeaks[peakNoB] = goodPeaks[peakNoA]
		}
	}
	var goodPeaksCountArray []int
	for _, v := range goodPeaks {
		if !contains(goodPeaksCountArray, v) {
			goodPeaksCountArray = append(goodPeaksCountArray, v)
		}
	}
	fmt.Println(len(goodPeaksCountArray))
}
