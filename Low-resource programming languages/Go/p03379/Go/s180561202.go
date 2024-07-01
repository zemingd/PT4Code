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

    // input
	line0 := strings.Split(nextLine(), " ")
 	N, _ := strconv.Atoi(line0[0])

	line1 := strings.Split(nextLine(), " ")
    var nums []int
    for i := 0; i < N; i++ {
        num, _:= strconv.Atoi(line1[i])
        nums = append(nums, num)
    }

    for i := 0; i < N; i++ {
        nums_tmp := make([]int, len(nums))
        copy(nums_tmp, nums)

        nums_case := remove(nums_tmp, i)
        
        med := getMedian(nums_case, N)
        
        fmt.Println(med)
    }
    
}


func getMedian(nums []int, N int) int {
    sort.Ints(nums)
    th := (N+1) / 2
    return nums[th-1];
}

func remove(s []int, i int) []int {
    s = append(s[:i], s[i+1:]...)
    n := make([]int, len(s))
    copy(n, s)
    return n
}


func nextLine() string {
	sc.Scan()
	return sc.Text()
}

