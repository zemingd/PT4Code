package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

const mod = 1000000007

func main() {
	var K int
	fmt.Scan(&K)
	// sc.Split(bufio.ScanWords)
	ret := 0
	if K%2 == 0 || K%5 == 0 {
		ret = -1
	} else {
		count := 1
		sum := 0
		prev := 1
		t := true
		sum += prev * 7 % K
		if sum%K == 0 {
			t = false
		}
		for t {
			count++
			prev = prev * 10 % K
			sum += 7 * prev
			sum = sum % K
			if sum%K == 0 {
				ret = count
				break
			}
		}
	}
	fmt.Print(ret)
}
func helper(a []int64, b []int64, t int64, dp [][]int, dpt [][]bool) int {
	ca := 0
	cb := 0
	la := len(a)
	lb := len(b)
	tb := &dpt[la][lb]
	tc := &dp[la][lb]
	if *tb == true {
		return *tc
	}
	if la >= 1 && t-a[0] >= 0 {
		ca = 1 + helper(a[1:], b, t-a[0], dp, dpt)
	}
	if len(b) >= 1 && t-b[0] >= 0 {
		cb = 1 + helper(a, b[1:], t-b[0], dp, dpt)
	}
	ans := Max(ca, cb)
	*tb = true
	*tc = ans
	return ans
}
func nextLine() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int64 {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return int64(i)
}
func MySort(a []int) {
	sort.Slice(a, func(i, j int) bool { return a[i] < a[j] })

}
func SortedBinaryAppend(sortedArr []int, targetValue int) []int {
	return []int{}
}
func SortedBinaryDelete(sortedArr []int, targetValue int) []int {
	return []int{}
}
func SortedBinarySearch(sortedArr []int, targetValue int) int {
	post := len(sortedArr) - 1
	pre := 0
	for {
		div := (post + pre) / 2
		tim := sortedArr[div]
		if tim == targetValue {
			return pre + div
		} else if tim > targetValue {
			post = tim
		} else {
			pre = tim
		}
		if pre == post {
			return -1
		}
	}
}
func Abs(i int) int {
	if i < 0 {
		return -1 * i
	}
	return i
}
func Min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func CalcNum(tate int, yoko int, A int, B int, dp *map[[2]int]int) int {
	if (*dp)[[2]int{tate, yoko}] != 0 {
		return (*dp)[[2]int{tate, yoko}]
	}
	return yoko*CalcNum(tate-1, yoko, A, B, dp) + tate*CalcNum(tate, yoko-1, A, B, dp)
}
func arrSum(arr []int) int {
	sum := 0
	for _, a := range arr {
		sum += a
	}
	return sum
}
func scanNums(len int) (nums []int64) {
	var num int64
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}
