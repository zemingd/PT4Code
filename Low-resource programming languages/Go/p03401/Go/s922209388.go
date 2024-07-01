package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"math"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	N := inputLineAsNumArray(1)[0]
	spots := inputLineAsNumArray(N)

    spots = append([]int{0}, spots...)
    spots = append(spots, 0)
    var dirs []bool
    base := int(math.Abs(float64(spots[0])))
	for i:=0; i<N+1; i++ {
        if spots[i] < spots[i+1] {
            dirs = append(dirs, true)
        } else if spots[i] > spots[i+1] {
            dirs = append(dirs, false)
        } else {
            dirs = append(dirs, dirs[i-1])
        }
        base += int(math.Abs(float64(spots[i]-spots[i+1])))
	}

	for i:=1; i<N+1; i++ {
	    diff := 0
        if dirs[i] != dirs[i-1] {
            diff = int(math.Abs(float64(spots[i]-spots[i-1])))*2
        }
        fmt.Println(base-diff)
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

