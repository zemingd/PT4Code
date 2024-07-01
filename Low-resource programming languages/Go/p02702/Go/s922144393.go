package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var s string
	fmt.Fscan(r, &s)
	nums := make([]int, len(s))
	for i := 0; i < len(s); i++ {
		num, _ := strconv.Atoi(string(s[i]))
		nums[i] = num
	}

	// 2019 = 3 * 673
	c := make([]int, len(s)+2)
	c[1] = nums[0]
	for i := 1; i < len(s); i++ {
		c[i+1] = c[i] + nums[i]
	}

	ans := 0
	for i := 0; i < len(s)-4; i++ {
		for j := i + 4; j < len(s); j++ {
			tmp := c[j+1] - c[i]
			if tmp%3 == 0 {
				mul := 1
				num := 0
				for k := j; k >= i; k-- {
					num += nums[k] * mul
					mul *= 10
				}
				if num%673 == 0 {
					ans++
				}
			}
		}
	}

	fmt.Println(ans)
}

// mod combination
func modpow(a, n, mod int) int {
	res := 1
	for n > 0 {
		if n%2 != 0 {
			res = res * a % mod
		}
		a = a * a % mod
		n = n / 2
	}
	return res
}

func modcomb(n, a, mod int) int {
	x := 1
	y := 1
	for i := 0; i < a; i++ {
		x = x * (n - i)
		x %= mod
		y = y * (i + 1)
		y %= mod
	}
	return x * modpow(y, mod-2, mod) % mod
}

func modfactorial(n, mod int) int {
	result := 1
	for i := 1; i <= n; i++ {
		result = (result * i) % mod
	}
	return result
}

// Utility

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func primeFactor(x int) map[int]int {
	res := make(map[int]int)
	for i := 2; i*i <= x; i++ {
		for x%i == 0 {
			res[i]++
			x = x / i
		}
	}
	if x != 1 {
		res[x] = 1
	}
	return res
}

func divisor(x int) []int {
	res := make([]int, 0)
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			res = append(res, i)
			if i != x/i {
				res = append(res, x/i)
			}
		}
	}
	return res
}

func gcd(x, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func lcm(x, y int) int {
	return x / gcd(x, y) * y
}

func reverseString(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

// Queue ...
type Queue []int

// pop ...
func (q *Queue) empty() bool {
	return len(*q) == 0
}

// push ...
func (q *Queue) push(i int) {
	*q = append(*q, i)
}

// pop ...
func (q *Queue) pop() (int, bool) {
	if q.empty() {
		return 0, false
	} else {
		res := (*q)[0]
		*q = (*q)[1:]
		return res, true
	}
}

// Stack ...
type Stack []int

// pop ...
func (s *Stack) empty() bool {
	return len(*s) == 0
}

// push ...
func (s *Stack) push(i int) {
	*s = append(*s, i)
}

// pop ...
func (s *Stack) pop() (int, bool) {
	if s.empty() {
		return 0, false
	} else {
		index := len(*s) - 1
		res := (*s)[index]
		*s = (*s)[:index]
		return res, true
	}
}
