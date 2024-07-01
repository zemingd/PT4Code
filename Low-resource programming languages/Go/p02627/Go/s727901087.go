package main

import (
	"fmt"
	"sort"
)

func calcXor(a, b int) int {
	sum := 0
	for i := 0; i < 30; i++ {
		tmp := (a>>i)%2 ^ (b>>i)%2
		sum += tmp << i
	}
	return sum
}
func main() {
	var num int
	fmt.Scan(&num)
	all := 0
	arr := make([]int, num)
	var tmpNum int
	for i := 0; i < num; i++ {
		fmt.Scan(&tmpNum)
		arr[i] = tmpNum
		all = calcXor(all, tmpNum)
	}
	for i := 0; i < num; i++ {
		ret := calcXor(all, arr[i])
		fmt.Print(ret)
		if i == num-1 {
			break
		}
		fmt.Print(" ")
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
func arrSum(arr []int) int {
	sum := 0
	for _, a := range arr {
		sum += a
	}
	return sum
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
