package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)

	n, k := oneInt(), oneInt()
	vs := scanNums(n)

	ans := -1050000000

	for i := 0; i <= min(n, k); i++ {

		for a := 0; a <= i; a++ {
			for b := 0; b <= min(n, k)-i; b++ {
				//fmt.Printf("a: %d, b: %d\n", a, b)
				got := []int{}
				got = append(got, vs[:a]...)
				got = append(got, vs[n-b:]...)
				got = sortDesc(got)
				//fmt.Printf("%#v\n", got)

				sum := 0
				for j := 0; j < min(n, k)-(a+b); j++ {
					if len(got) != 0 && got[len(got)-1] < 0 {
						got = got[:len(got)-1]
					}

				}
				for _, v := range got {
					sum += v
				}

				ans = max(ans, sum)
			}
		}

	}
	fmt.Println(ans)

}

func oneInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func oneStr() string {
	sc.Scan()
	return sc.Text()
}

func scanNums(len int) (nums []int) {
	for i := 0; i < len; i++ {
		nums = append(nums, oneInt())
	}
	return nums
}

func scanStrings(len int) (strs []string) {
	for i := 0; i < len; i++ {
		strs = append(strs, oneStr())
	}
	return strs
}

func abs(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
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

func cumSum(nums []int) []int {
	sums := []int{0}

	for i := 0; i < len(nums); i++ {
		sums = append(sums, sums[i]+nums[i])
	}
	return sums
}
