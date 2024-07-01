package main

import (
	"fmt"
	"sort"
	"strconv"
)

func main() {
	var num int64
	num = 1000000000000001
	arr := make([]int64, 14)
	eval := make([]int64, 14)
	arr[1] = 26
	for i := 2; i < 13; i++ {
		arr[i] = arr[i-1] * 26
	}
	for i := 1; i < 13; i++ {
		eval[i] = eval[i-1] + arr[i]
	}
	fmt.Scan(&num)
	var test string
	pos := 0
	for i := 0; i < 13; i++ {
		if eval[i+1] >= num {
			pos = i
			break
		}
	}
	num = num - eval[pos]
	test = strconv.FormatInt(num-1, 26)
	str := ""
	for _, c := range test {
		var neko int64
		neko, _ = strconv.ParseInt(string(c), 36, 64)
		neko += 10
		str = str + strconv.FormatInt(neko, 36)
	}
	passNum := pos + 1 - len(str)
	for i := 0; i < passNum; i++ {
		str = "a" + str
	}
	fmt.Print(str)
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
func scanNums(len int) (nums []int) {
	var num int
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
