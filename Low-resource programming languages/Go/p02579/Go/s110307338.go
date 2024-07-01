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
	var H int
	var W int
	fmt.Scan(&H)
	fmt.Scan(&W)

	var CH int
	var CW int
	fmt.Scan(&CH)
	CH--
	fmt.Scan(&CW)
	CW--
	var DH int
	var DW int
	fmt.Scan(&DH)
	fmt.Scan(&DW)
	DH--
	DW--

	MapTable := map[[2]int]string{}
	MapHash := map[[2]int]int{}

	sc.Split(bufio.ScanWords)
	for i := 0; i < H; i++ {
		str := nextLine()
		for j := 0; j < W; j++ {
			MapTable[[2]int{i, j}] = string(str[j])
			MapHash[[2]int{i, j}] = -1
		}
	}
	stack := [][2]int{[2]int{CH, CW}}
	plusedMap := map[[2]int]int{}
	count := 0
	for len(stack) != 0 {
		tmp := [][2]int{}
		for _, pt := range stack {
			if pt[0] >= 0 && pt[0] < H && pt[1] >= 0 && pt[1] < W && MapTable[pt] == "." {
				MapHash[pt] = count
			}
			check := [][2]int{
				[2]int{pt[0] + 1, pt[1]},
				[2]int{pt[0] - 1, pt[1]},
				[2]int{pt[0], pt[1] + 1},
				[2]int{pt[0], pt[1] - 1},
			}
			for _, c := range check {
				if MapTable[c] == "." && MapHash[c] == -1 {
					tmp = append(tmp, c)
				}
			}
			worpMap := [][2]int{}
			for i := 0; i <= 2; i++ {
				for j := 0; j <= 2; j++ {
					if i == 0 && j == 0 {
						continue
					}
					if i == 1 && j == 0 {
						continue
					}
					if i == -1 && j == 0 {
						continue
					}
					if i == 0 && j == 1 {
						continue
					}
					if i == 0 && j == -1 {
						continue
					}
					worpMap = append(worpMap, [2]int{pt[0] + i, pt[0] + j})
					worpMap = append(worpMap, [2]int{pt[0] + i, pt[0] - j})
					worpMap = append(worpMap, [2]int{pt[0] - i, pt[0] - j})
					worpMap = append(worpMap, [2]int{pt[0] - i, pt[0] + j})
				}
			}
			for _, w := range worpMap {
				if MapTable[w] == "." && MapHash[w] == -1 {
					plusedMap[w]++
				}
			}
		}
		stack = tmp
		if len(stack) == 0 {
			count++
			stack = [][2]int{}
			for k, _ := range plusedMap {
				if MapHash[k] == -1 && MapTable[k] == "." {
					stack = append(stack, k)
				}
			}
			plusedMap = map[[2]int]int{}
		}
	}
	if v, ok := MapHash[[2]int{DH, DW}]; ok {
		fmt.Println(v)
	} else {
		fmt.Println(-1)
	}
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
