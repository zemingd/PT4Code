package main
 
import (
	"fmt"
	"sort"
)
 
func main() {
	arr := scanStrings(1)
	str := arr[0]
	if str[0] >= "a"[0] {
		fmt.Print("a")
	} else {
		fmt.Print("A")
	}
 
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