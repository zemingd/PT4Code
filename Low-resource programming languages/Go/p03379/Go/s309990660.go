package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
    
    buf := make([]byte, 1000)
    sc.Buffer(buf, 1400000000)

    // input
    N := inputLineAsNumArray(1)[0]
    nums := inputLineAsNumArray(N)

    //median
    nums_sorted := make([]int, N)
    copy(nums_sorted, nums)
    sort.Ints(nums_sorted)

    medL := nums_sorted[N/2-1]
    medR := nums_sorted[N/2]
    
    for i := 0; i < N; i++ {
        if nums[i] <= medL {
            fmt.Println(medR)
        } else {
            fmt.Println(medL)
        }
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