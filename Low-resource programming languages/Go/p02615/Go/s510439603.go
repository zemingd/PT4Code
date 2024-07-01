package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

type st struct {
	ind int
	min int64
}

func main() {
	var N int
	fmt.Scan(&N)
	sc.Split(bufio.ScanWords)
	arr := make([]int64, N)
	for i := 0; i < N; i++ {
		arr[i] = nextInt()
	}
	sort.Slice(arr, func(a, b int) bool { return arr[a] > arr[b] })
	cnt := int64(0)
	ck := []int64{}
	for i, a := range arr {
		if i == 0 {
			ck = append(ck, a)
		} else {
			tmp := ck[0]
			cnt += tmp
			ck = ck[1:]
			ck = append(ck, a)
			ck = append(ck, a)
		}
	}
	fmt.Print(cnt)

}
func chc(m [][]bool, p int) [][]bool {
	ret := make([][]bool, len(m))
	for i, l := range m {
		tmp := []bool{}
		for _, c := range l {
			if i == p {
				tmp = append(tmp, false)
			} else if c == true {
				tmp = append(tmp, true)
			} else {
				tmp = append(tmp, false)
			}
		}
		ret[i] = tmp
	}
	return ret
}
func chl(m [][]bool, p int) [][]bool {
	ret := make([][]bool, len(m))
	for j, l := range m {
		tmp := []bool{}
		for i, c := range l {
			if i == p {
				tmp = append(tmp, false)
			} else if c == true {
				tmp = append(tmp, true)
			} else {
				tmp = append(tmp, false)
			}
		}
		ret[j] = tmp
	}
	return ret
}
func helper(ma [][]bool) int {
	count := 0
	for _, l := range ma {
		for _, c := range l {
			if c == true {
				count++
			}
		}
	}
	return count
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
