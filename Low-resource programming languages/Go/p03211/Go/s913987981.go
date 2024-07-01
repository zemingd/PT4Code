package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var S string
	fmt.Scan(&S)
	min := 999
	for i := 0; i < len(S)-2; i++ {
		w, _ := strconv.ParseFloat(S[i:i+3], 32)
		wm := math.Abs(753 - w)
		if int(wm) < min {
			min = int(wm)
		}
	}
	fmt.Println(min)
}