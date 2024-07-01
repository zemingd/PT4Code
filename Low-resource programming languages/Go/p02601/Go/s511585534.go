package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	defaultBufferSize = 1024
	maxBufferSize     = 1e6
	Mod               = 1e9 + 7
)

var sc = bufio.NewScanner(os.Stdin)

// sc.Buffer(make([]byte, defaultBufferSize), maxBufferSize)

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
	i, err := strconv.ParseInt(sc.Text(), 10, 64)
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readfloat64() float64 {
	sc.Scan()
	f, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return f
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

func primeFactorization(x int) map[int]int {
	result := make(map[int]int, 0)
	for i := 2; i*i <= x; i++ {
		for x%i == 0 {
			result[i]++
			x /= i
		}
	}
	if x != 1 {
		result[x]++
	}
	return result
}

func isPrime(x int) bool {
	if x == 1 {
		return false
	}
	for i := 2; i*i <= x; i++ {
		if i == x {
			continue
		}
		if x%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b, c := readInt(), readInt(), readInt()
	k := readInt()

	for i := 0; i < k; i++ {
		if a <= b {
			if b <= c {
				a *= 2
			}
			if c <= a {
				c *= 2
			}
		} else if b <= c {
			if a <= b {
				a *= 2
			}
			if c <= a {
				b *= 2
			}
		} else if c <= a {
			if b <= c {
				b *= 2
			}
			if a <= b {
				c *= 2
			}
		}
	}
	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
