package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func nextLine() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, e := strconv.Atoi(nextLine())
	if e != nil {
		panic(e)
	}
	return i
}

// for large string > 64*1024
var reader = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := reader.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func scanNums(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        num = nextInt()
        nums = append(nums, num)
    }
    return
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func sumSlice(x[]int) int {
	sum := 0
	for _, n := range x{
		sum += n
	}
	return sum
}

func main() {
	scanner.Split(bufio.ScanWords) // switch to separating by space
	N := nextInt()
	nums := scanNums(N)

	sum := sumSlice(nums)
	total := 0

	for _, n := range nums{
		total += (sum-n)*n
	}
	total /= 2

	fmt.Println(total)
}
