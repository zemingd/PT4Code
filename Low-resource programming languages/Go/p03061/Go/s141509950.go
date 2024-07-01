package main

import (
	"bufio"
	"fmt"
	"math"
	"math/big"
	"os"
	"sort"
	"strconv"
	"strings"
)

func oneInt() int {
	var a int
	fmt.Scan(&a)
	return a
}
func oneStr() string {
	var a string
	fmt.Scan(&a)
	return a
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func scanNums() (nums []int) {
	s := nextLine()
	numStr := strings.Split(s, " ")

	for _, n := range numStr {
		i, _ := strconv.Atoi(n)
		nums = append(nums, i)
	}
	return nums
}

func scanStrings() (strs []string) {
	s := nextLine()
	list := strings.Split(s, " ")
	strs = append(strs, list...)
	return strs
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
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

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

func sortAsc(a []int) []int {
	sort.Ints(a)
	return a
}

func sortDesc(a []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	return a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	if a == 0 && b == 0 {
		return 0
	}
	return a * b / gcd(a, b)
}

var sc = bufio.NewScanner(os.Stdin)

func calc(nums []int) int {
	if len(nums) == 1 {
		return 0
	}

	if len(nums) == 2 {
		if nums[0] == nums[1] {
			return 1
		} else {
			return 0
		}
	}

	ans0 := 0
	ans1 := 0
	for i := 0; i < len(nums); i++ {

		if i == 0 {
			if nums[0] == 0 {
				ans1++
			} else {
				ans0++
			}
		}

		if i == 1 {
			if nums[1] == 0 {
				ans0++
			} else {
				ans1++
			}
		}

		// 0スタート
		if i != 0 && i != 1 && i%2 != 0 && nums[i] == 0 {
			ans0++
		}
		if i != 0 && i != 1 && i%2 == 0 && nums[i] == 1 {
			ans0++
		}

		//1
		if i != 0 && i != 1 && i%2 != 0 && nums[i] == 1 {
			ans1++
		}
		if i != 0 && i != 1 && i%2 == 0 && nums[i] == 0 {
			ans1++
		}
	}

	return min(ans0, ans1)
}

func main() {
	a := oneInt()
	var V []int
	for i := 0; i < a; i++ {
		V = append(V, oneInt)
	}

	var max int
	var tmp int
	for i := 0; i < a-1; i++ {
		for j := i + 1; j < a; j++ {
			tmp = gcd(V[i], V[j])
		}
		if tmp > max {
			max = tmp
		}
	}
	fmt.Println(max)
}

func gcd(m, n uint64) uint64 {
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetUint64(m)
	b := new(big.Int).SetUint64(n)
	return z.GCD(x, y, a, b).Uint64()
}
