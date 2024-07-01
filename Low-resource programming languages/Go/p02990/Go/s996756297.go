package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	k, _ := strconv.Atoi(stringLineScan())
	r := n - k
	a := make([]int, n+2)
	inv := make([]int, n+2)
	d := 1000000007
	a[0], inv[0] = 1, 1
	for i := 1; i <= n+1; i++ {
		a[i] = a[i-1] * i % d
		inv[i] = modinv(a[i], d)
	}
	for i := 1; i <= k; i++ {
		ans := 0
		cb := a[k-1] * inv[i-1] % d * inv[k-i] % d
		if r-i-1 >= 0 {
			cr := a[r-1] * inv[i] % d * inv[r-i-1] % d
			ans += cb * cr % d
			ans %= d
		}
		if r-i >= 0 {
			cr := a[r-1] * inv[i-1] % d * inv[r-i] % d
			ans += cb * cr % d * 2
			ans %= d
		}
		if i > 1 && r-i+1 >= 0 {
			cr := a[r-1] * inv[i-2] % d * inv[r-i+1] % d
			ans += cb * cr % d
			ans %= d
		}
		fmt.Println(ans)
	}
}
func modinv(a, m int) int {
	b, u, v := m, 1, 0
	for {
		t := a / b
		a -= t * b
		u -= t * v
		a, b, u, v = b, a, v%m, u
		if b == 0 {
			break
		}
	}
	u %= m
	if u < 0 {
		u += m
	}
	return u
}
