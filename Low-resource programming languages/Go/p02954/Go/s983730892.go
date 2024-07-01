package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readfloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func gcd(x, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

const Mod = 1000000007

func ModComb(n, k int) int {
	if k == 0 {
		return 1
	}
	x, y := n, k
	for i := 1; i < k; i++ {
		x = x * (n - i) % Mod
		y = y * (k - i) % Mod
	}
	inv := ModInv(y)
	return x * inv % Mod
}

func ModFact(x int) int {
	fact := 1
	for i := 1; i <= x; i++ {
		fact = fact * i % Mod
	}
	return fact
}

func ModInv(x int) int {
	return ModPow(x, Mod-2)
}

func ModPow(a, n int) int {
	res := 1
	for n > 0 {
		if n%2 != 0 {
			res = res * a % Mod
		}
		a = a * a % Mod
		n /= 2
	}
	return res
}

func pow(a, n int) int {
	if n == 0 {
		return 1
	}

	ans := 0
	if n%2 == 0 {
		ans = pow(a*a, n/2)
	} else {
		ans = a * pow(a*a, (n-1)/2)
	}
	return ans
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), 1e6)

	s := readString()
	n := len(s)
	ans := make([]int, n)

	for k := 0; k < 2; k++ {
		count := 0
		for i := 0; i < n; i++ {
			if s[i] == 'R' {
				count++
			} else {
				ans[i] += count / 2
				ans[i-1] += (count + 1) / 2
				count = 0
			}
		}
		ans = intSliceReverse(ans)
		s = stringReverse(s)

		var rs string
		for i := 0; i < n; i++ {
			if s[i] == 'R' {
				rs += "L"
			} else {
				rs += "R"
			}
		}
		s = rs
	}
	for _, v := range ans {
		fmt.Printf("%d ", v)
	}
	fmt.Println("")
}

func intSliceReverse(slice []int) []int {
	for i, j := 0, len(slice)-1; i < j; i, j = i+1, j-1 {
		slice[i], slice[j] = slice[j], slice[i]
	}
	return slice
}

func stringReverse(str string) string {
	runes := []rune(str)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
