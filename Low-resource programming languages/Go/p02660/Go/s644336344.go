package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n := scanInt()
	search := prime_factors(n)
	jud := map[int]int{}
	flag := false
	count := 0
	for _, s := range search {
		jud[s] = 1
	}
	for {
		flag = false
		for k, v := range jud {
			if n%pow(k, v) == 0 {
				n /= pow(k, v)
				jud[k]++
				flag = true
				break
			}
		}
		if flag {
			count++
			continue
		}
		break
	}

	fmt.Println(count)
	return
}

var sc = bufio.NewScanner(os.Stdin)

func scanString() string {
	sc.Scan()
	return sc.Text()
}
func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}
func scanFloat64() float64 {
	f, _ := strconv.ParseFloat(scanString(), 64)
	return f
}
func Permute(nums []int) [][]int {
	n := factorial(len(nums))
	ret := make([][]int, 0, n)
	permute(nums, &ret)
	return ret
}
func permute(nums []int, ret *[][]int) {
	*ret = append(*ret, makeCopy(nums))

	n := len(nums)
	var i, j int
	for {
		for i = n - 2; i >= 0; i-- {
			if nums[i] < nums[i+1] {
				break
			}
		}
		if i < 0 {
			return
		}
		for j = n - 1; ; j-- {
			if nums[j] > nums[i] {
				break
			}
		}
		nums[i], nums[j] = nums[j], nums[i]
		for k, l := i+1, n-1; k < l; {
			nums[k], nums[l] = nums[l], nums[k]
			k++
			l--
		}
		*ret = append(*ret, makeCopy(nums))
	}
}

func factorial(n int) int {
	ret := 1
	for i := 2; i <= n; i++ {
		ret *= i
	}
	return ret
}

func pow(n, m int) int {
	ret := 1
	for i := 0; i < m; i++ {
		ret *= n
	}
	return ret
}
func makeCopy(nums []int) []int {
	return append([]int{}, nums...)
}
func gcd(a int, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func eratosthenes(n int) []int {
	search := make([]bool, n+1)
	ans := []int{}
	for i := 2; i < n+1; i++ {
		search[i] = true
	}
	for i := 2; i*i < n+1; i++ {
		for j := 2; i*j < n+1; j++ {
			search[i*j] = false
		}
	}
	for i := 2; i < n; i++ {
		if search[i] {
			ans = append(ans, i)
		}
	}
	return ans
}
func prime_factors(n int) []int {
	factors := make([]int, 0)
	i := 2
	for i*i <= n {
		r := n % i
		if r != 0 {
			i += 1
		} else if r == 0 {
			n /= i
			factors = append(factors, i)
		}
	}
	if n > 1 {
		factors = append(factors, n)
	}
	return factors
}

func main() {
	sc.Split(bufio.ScanWords)
	solve()
}
