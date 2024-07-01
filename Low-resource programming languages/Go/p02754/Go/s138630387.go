package main

import "fmt"

func main() {
	var num, blue, red int
	fmt.Scan(&num, &blue, &red)

	var perfCycleNum int = num / (blue + red)
	var rem int = num % (blue + red)
	var blueTotal int = perfCycleNum * blue

	blueTotal += min(rem, blue)

	fmt.Println(blueTotal)
}

// min は2つのint型の値を比べて小さいほうを返す関数 (float型を扱う場合は math.Min())
func min(x int, y int) int {
	if x > y {
		return y
	}
	return x
}
