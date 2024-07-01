package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	sc.Buffer(make([]byte, 0), 1e6) // maxTokenSize
	sc.Split(bufio.ScanWords)
	defer out.Flush()
	/* --- code --- */
	n, m, k := nextInt(), nextInt(), nextInt()
	friendList := make([][]int, n)
	blockList := make([][]int, n)
	for i := 0; i < n; i++ {
		friendList[i] = make([]int, n)
		blockList[i] = make([]int, n)
	}

	for i := 0; i < m; i++ {
		a, b := nextInt()-1, nextInt()-1
		friendList[a][b] = 1
		friendList[b][a] = 1
	}

	for i := 0; i < k; i++ {
		c, d := nextInt()-1, nextInt()-1
		blockList[c][d] = 1
		blockList[d][c] = 1
	}

	for i := 0; i < n; i++ {
		canBeFriend := map[int]bool{}
		canBeFriend = dfs(canBeFriend, i, i, friendList, blockList)
		// fmt.Println(canBeFriend)
		ans := 0
		for _, v := range canBeFriend {
			if v {
				ans++
			}
		}
		fmt.Print(ans)
		fmt.Print(" ")
	}
	fmt.Println("")
}

func dfs(canBeFriend map[int]bool, original int, i int, friendList [][]int, blockList [][]int) map[int]bool {
	friends := friendList[i]
	// fmt.Println(friends)
	// return nil
	for x := 0; x < len(friends); x++ {
		if friendList[i][x] == 0 {
			continue
		}
		if x == original {
			continue
		}
		_, ok := canBeFriend[x]
		if ok {
			continue
		}
		if blockList[x][original] == 1 {
			canBeFriend[x] = false
		} else {
			if friendList[original][x] == 1 {
				canBeFriend[x] = false
			} else {
				canBeFriend[x] = true
			}
		}
		canBeFriend = dfs(canBeFriend, original, x, friendList, blockList)
	}
	return canBeFriend
}

// -*-*-*-*-*-*-*-*-
// * I/O utilities *
// -*-*-*-*-*-*-*-*-

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}

// -*-*-*-*-*-*-*-*-
// * tool snippets *
// -*-*-*-*-*-*-*-*-
func duplicate2Int(base [][]int) (ret [][]int) {
	ret = make([][]int, len(base))
	for i, v := range base {
		ret[i] = append([]int{}, v...)
	}
	return
}

func max(a, b int) int {
	return int(max64(int64(a), int64(b)))
}

func max64(a int64, b int64) int64 {
	if a < b {
		return b
	}
	return a
}

func min(a, b int) int {
	return int(min64(int64(a), int64(b)))
}

func min64(a int64, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

// *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
// * math flavor typical theories *
// *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
func gcd(a, b int) int {
	if a > b {
		return gcd(b, a)
	}
	for a != 0 {
		a, b = b%a, a
	}
	return b
}

func pow(a, b int) (ret int) {
	ret = a
	for i := 0; i < b-1; i++ {
		ret *= a
	}
	return
}

func powMod(n, m, mod int) (ret int) {
	ret = 1
	for m > 0 {
		if m&1 == 1 {
			ret *= n
			ret %= mod
		}
		n *= n
		n %= mod
		m >>= 1
	}
	return ret
}
