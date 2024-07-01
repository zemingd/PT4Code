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

type st struct {
	ind int
	min int64
}

func main() {
	var N int
	fmt.Scan(&N)
	var M int
	fmt.Scan(&M)
	arr := make([][]int, M)
	member := make([]int, N+1)
	group := map[int][]int{}
	sc.Split(bufio.ScanWords)
	for i := 0; i < M; i++ {
		a := nextInt()
		b := nextInt()
		if a < b {
			arr[i] = []int{int(a), int(b)}
		} else {
			arr[i] = []int{int(b), int(a)}
		}
	}
	sort.Slice(arr, func(i, j int) bool { return arr[i][0] < arr[j][0] })
	groupNum := 0
	for _, cond := range arr {
		if member[cond[0]] == 0 && member[cond[1]] == 0 {
			groupNum++
			member[cond[0]] = cond[0]
			member[cond[1]] = cond[0]
			group[cond[0]] = append(group[cond[0]], cond[0], cond[1])
		} else if member[cond[0]] == 0 {
			member[cond[0]] = member[cond[1]]
			group[member[cond[1]]] = append(group[member[cond[1]]], cond[0])
		} else if member[cond[1]] == 0 {
			member[cond[1]] = member[cond[0]]
			group[member[cond[0]]] = append(group[member[cond[0]]], cond[1])
		} else {
			if member[cond[1]] != member[cond[0]] {
				if member[cond[1]] < member[cond[0]] {
					for _, g := range group[member[cond[0]]] {
						member[g] = member[cond[1]]
					}
					group[member[cond[0]]] = append(group[member[cond[0]]], group[member[cond[1]]]...)
				} else {
					fmt.Print("hontoni?")
				}
			}
		}
	}
	max := 0
	for _, m := range group {
		max = Max(len(m), max)
	}
	fmt.Print(max)
}
func bc(s string, pos int) string {
	ch := "1"
	if string(s[pos]) == "1" {
		ch = "0"
	}
	pre := string(s[:pos])
	post := ""
	if pos != len(s)-1 {
		post = string(s[pos+1:])
	}
	tmp := pre + ch + post
	return tmp
}
func popCount(n string) int {
	count := 0
	for _, s := range n {
		if string(s) == "1" {
			count++
		}
	}
	return count
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
