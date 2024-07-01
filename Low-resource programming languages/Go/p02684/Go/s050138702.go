package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func swap(a int64, b int64) (int64, int64) {
	return b, a
}

func gcd(a int64, b int64) int64 {
	if b > a {
		a, b = swap(a, b)
	}
	if b == 0 {
		return a
	} else {
		return gcd(a%b, b)
	}
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(nums ...int64) int64 {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int64(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int64) int64 {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int64(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func nextLong() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	s := sc.Text()
	return s
}

func nextByte() byte {
	sc.Scan()
	s := sc.Bytes()
	return s[0]
}

func main() {
	sc.Split(bufio.ScanWords)
	//ans := 1
	N := nextInt()
	K := nextLong()
	ans := 0
	Alllength := int64(0)
	Looplength := int64(0)
	var A [200005]int
	var Teleportnum [500005]int64
	var Visited [200005]bool
	for i := 1; i <= N; i++ {
		A[i] = nextInt()
	}
	Nowtown := 1
	Teleport := int64(0)
	for {
		if Visited[Nowtown] {
			break
		}
		Teleportnum[Nowtown] = Teleport
		Visited[Nowtown] = true
		Alllength = Teleport + 1
		Teleport++
		Nowtown = A[Nowtown]
	}
	Looplength = Alllength - Teleportnum[Nowtown]
	if K <= Alllength {
		for i := 1; i <= N; i++ {
			if K == Teleportnum[i] {
				ans = i
				break
			}
		}
	} else {
		K -= (Alllength - Looplength)
		K = (K % Looplength)
		//fmt.Printf("%d\n", K)
		for i := 1; i <= N; i++ {
			if K == Teleportnum[i+(int(Alllength)-int(Looplength))] {
				ans = i
				break
			}
		}
	}
	//fmt.Printf("%d\n", Alllength)
	//fmt.Printf("%d\n", Looplength)
	fmt.Printf("%d\n", ans)
}
