package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	K := nextInt()

	initFact(3000)

	for i := 1; i <= K; i++ {
		fmt.Println(comb(N-K+1, i).mul(comb(K-1, i-1)))
	}
}

var facts []mint  // facts[i] = (i + 1)! mod
var ifacts []mint // ifacts[i] = (i + 1)! modの逆元

// nの階乗までを初期化します
func initFact(n int) {
	facts = make([]mint, n+1)
	ifacts = make([]mint, n+1)
	facts[0] = mint(1)
	ifacts[0] = mint(1)
	m := mint(n)
	for i := mint(0); i < m; i++ {
		facts[i+1] = facts[i].mul(i.add(1))
		ifacts[i+1] = ifacts[i].mul(i.add(1).pow(mod - 2))
	}
}

// perm はnPkを返します
func perm(n, k int) mint {
	if n < k {
		return 0
	}
	return ifacts[n-k].mul(facts[n])
}

// comb はnCkを返します
func comb(n, k int) mint {
	if n == 0 && k == 0 {
		return mint(1)
	} else if n < k || n < 0 {
		return mint(0)
	}
	return facts[n].mul(ifacts[n-k]).mul(ifacts[k])
}

// dupcomb はnHkを返します
func dupcomb(n, k int) mint {
	if n == 0 && k == 0 {
		return mint(1)
	} else if n < 0 || k == 0 {
		return mint(0)
	}
	return facts[n+k-1].mul(ifacts[n-1]).mul(ifacts[k])
}

type mint int64

var mod = mint(1e9 + 7)

// add は a + bを返します
func (a mint) add(b mint) mint {
	return (a + b) % mod
}

// sub は a - bを返します
func (a mint) sub(b mint) mint {
	return (a - b + mod) % mod
}

// mul は a * bを返します
func (a mint) mul(b mint) mint {
	return (a * (b % mod)) % mod
}

// div は a/bを返します
func (a mint) div(b mint) mint {
	return a.mul(b.inv())
}

// inv は aの逆元を返します
func (a mint) inv() mint {
	// 拡張ユークリッドの互除法
	b := mod
	u := mint(1)
	v := mint(0)
	for b > 0 {
		t := a / b
		a -= t * b
		a, b = b, a
		u -= t * v
		u, v = v, u
	}
	return (u + mod) % mod
}

// pow は a ^ bを返します
func (a mint) pow(b mint) mint {
	ans := mint(1)

	for b != 0 {
		if b&1 == 1 {
			ans = ans.mul(a)
		}
		a = a.mul(a)
		b = b >> 1
	}
	return ans
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)

	return i
}
