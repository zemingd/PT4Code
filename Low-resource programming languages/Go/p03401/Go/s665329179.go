package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	buf := make([]byte, 1000000)
	sc.Buffer(buf, 1400000000)

	N := inputLineAsNumArray(1)[0]
	spots := inputLineAsNumArray(N)

	spots = append([]int{0}, spots...)
	spots = append(spots, 0)
	// var dirs []bool
	// var diffs []int
	var costs []int
	base := int(math.Abs(float64(spots[0])))
	for i := 0; i < N+1; i++ {
		// if spots[i] < spots[i+1] {
		// 	dirs = append(dirs, true)
		// } else if spots[i] > spots[i+1] {
		// 	dirs = append(dirs, false)
		// } else {
		// 	if i == 0 {
		// 		dirs = append(dirs, true)
		// 	} else {
		// 		dirs = append(dirs, dirs[i-1])
		// 	}
		// }
		costs = append(costs, int(math.Abs(float64(spots[i]-spots[i+1]))))
		base += costs[i]

		// if i > 0 {
		// 	diff := 0
		// 	if dirs[i] != dirs[i-1] {
		// 		diff = int(math.Abs(float64(spots[i]-spots[i-1]))) + int(math.Abs(float64(spots[i]-spots[i+1]))) - int(math.Abs(float64(spots[i+1]-spots[i-1])))
		// 	}
		// 	diffs = append(diffs, diff)
		// }
	}

	for i := 0; i < N; i++ {
		fmt.Println(base + int(math.Abs(float64(spots[i]-spots[i+2]))) - costs[i] - costs[i+1])
	}

}

func inputLineAsNumArray(length int) []int {
	line := strings.Split(readLine(), " ")
	var nums []int
	for i := 0; i < length; i++ {
		num, _ := strconv.Atoi(line[i])
		nums = append(nums, num)
	}
	return nums
}

func readLine() string {
	sc.Scan()
	return sc.Text()
}
