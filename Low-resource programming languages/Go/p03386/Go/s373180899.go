package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

    // input
    nums := inputLineAsNumArray(3)
    A := nums[0]
    B := nums[1]
    K := nums[2]
    
    // print
    for i:=A; i<A+K; i++ {
        fmt.Println(i)
    }
    for i:=B-K+1; i<=B; i++ {
        fmt.Println(i)
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