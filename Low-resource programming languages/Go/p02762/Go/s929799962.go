package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"strconv"
	"strings"
)

var sc *bufio.Scanner

const bufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, bufferSize)
	sc.Buffer(buf, 1e+7)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	m := nextInt()
	k := nextInt()
	f := make([][]int, n) // follow
	b := make([][]int, n) // block
	ans := make([]int, n)
	for i := range ans {
		ans[i] = -1
		f[i] = []int{}
		b[i] = []int{}
	}
	for i := 0; i < m; i++ {
		er := nextInt() - 1
		ee := nextInt() - 1
		f[er] = append(f[er], ee)
		f[ee] = append(f[ee], er)
	}

	for i := 0; i < k; i++ {
		er := nextInt() - 1
		ee := nextInt() - 1
		b[er] = append(b[er], ee)
		b[ee] = append(b[ee], er)
	}

	for i := 0; i < n; i++ {
		if ans[i] >= 0 {
			continue
		}

		ok := map[int]bool{}
		nums := []int{}
		var dfs func(int)
		dfs = func(v int) {
			ok[v] = true
			nums = append(nums, v)
			for _, u := range f[v] {
				if !ok[u] {
					dfs(u)
				}
			}
		}
		dfs(i)

		for j := range nums {
			ans[nums[j]] = len(nums) - 1
			//debugf("b[%d]:%v\n", nums[j], b[nums[j]])
			for k := range b[nums[j]] {
				if ok[b[nums[j]][k]] {
					ans[nums[j]]--
				}
			}
			ans[nums[j]] -= len(f[nums[j]])
		}
	}

	s := fmt.Sprint(ans)
	fmt.Println(s[1 : len(s)-1])
	// for i := range ans {
	// 	_, _ = fmt.Fprintf(writer, "%d", ans[i])
	// 	if i != len(ans)-1 {
	// 		_, _ = fmt.Fprint(writer, " ")
	// 	}
	// }
}

func main() {
	answer(os.Stdin, os.Stdout)
}

// const (
// 	TooLarge = math.MaxInt64
// 	TooSmall = math.MinInt64
// )
//
// func main() {
// 	scanner := makeWordScanner()
// 	n := eGetInt(scanner)
// 	m := eGetInt(scanner)
// 	k := eGetInt(scanner)
// 	friends := make([][]int, n+1)
// 	blocks := make([][]int, n+1)
// 	for i := 1; i < n+1; i++ {
// 		friends[i] = make([]int, 0, n+1)
// 		blocks[i] = make([]int, 0, n+1)
// 	}
// 	for i := 0; i < m; i++ {
// 		a := eGetInt(scanner)
// 		b := eGetInt(scanner)
// 		friends[a] = append(friends[a], b)
// 		friends[b] = append(friends[b], a)
// 	}
// 	for i := 0; i < k; i++ {
// 		c := eGetInt(scanner)
// 		d := eGetInt(scanner)
// 		blocks[c] = append(blocks[c], d)
// 		blocks[d] = append(blocks[d], c)
// 	}
// 	unionWith := make([]int, n+1)
// 	for i := 0; i < n+1; i++ {
// 		unionWith[i] = -1
// 	}
// 	var findFriend func(int, int, *[]int)
// 	findFriend = func(id, me int, result *[]int) {
// 		if unionWith[me] != -1 {
// 			return
// 		}
// 		unionWith[me] = id
// 		*result = append(*result, me)
// 		for i := 0; i < len(friends[me]); i++ {
// 			findFriend(id, friends[me][i], result)
// 		}
// 	}
// 	group := make([][]int, 0)
// 	groupID := 0
// 	for i := 1; i < n+1; i++ {
// 		if unionWith[i] != -1 {
// 			// 所属済み
// 			continue
// 		}
// 		var newGroup []int
// 		findFriend(groupID, i, &newGroup)
// 		group = append(group, newGroup)
// 		groupID++
// 	}
// 	// for i := 0; i < len(group); i++ {
// 	// 	fmt.Printf("%v\n", group[i])
// 	// }
// 	// fmt.Printf("%v\n", unionWith)
// 	answer := make([]int, n+1)
// 	for i := 1; i < n+1; i++ {
// 		gnum := unionWith[i]
// 		g := group[gnum]
// 		blocknum := 0
// 		friendnum := 0
// 		for _, v := range g {
// 			if contains(v, friends[i]) {
// 				friendnum++
// 			}
// 			if contains(v, blocks[i]) {
// 				blocknum++
// 			}
// 		}
// 		answer[i] = len(g) - blocknum - friendnum - 1 // 自分も引く
// 	}
// 	s := fmt.Sprint(answer[1:])
// 	fmt.Println(s[1 : len(s)-1])
// }
//
// func contains(n int, a []int) bool {
// 	for _, v := range a {
// 		if n == v {
// 			return true
// 		}
// 	}
// 	return false
// }

////////////////////////////////////////////////////////////////////////////////
// ライブラリ
////////////////////////////////////////////////////////////////////////////////
func makeScanner(maxByte int) *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]uint8, 0, 8192), maxByte)
	return scanner
}
func makeCharScanner() *bufio.Scanner {
	scanner := makeScanner(8192)
	scanner.Split(bufio.ScanRunes)
	return scanner
}
func makeWordScanner() *bufio.Scanner {
	scanner := makeScanner(8192)
	scanner.Split(bufio.ScanWords)
	return scanner
}
func eGetLine(r *bufio.Scanner) string {
	if r.Scan() {
		return r.Text()
	}
	err := r.Err()
	if err != nil {
		log.Fatal(err)
	}
	// EOF
	return ""
}
func eGetInt(r *bufio.Scanner) int {
	line := eGetLine(r)
	return eAtoi(line)
}
func eGetInt64(r *bufio.Scanner) int64 {
	line := eGetLine(r)
	return eAtoInt64(line)
}
func eGetFields(r *bufio.Scanner) []string {
	line := eGetLine(r)
	return strings.Fields(line)
}
func eGetInts(r *bufio.Scanner) []int {
	fields := eGetFields(r)
	ints := make([]int, len(fields))
	for i := 0; i < len(ints); i++ {
		ints[i] = eAtoi(fields[i])
	}
	return ints
}
func eGetInt64s(r *bufio.Scanner) []int64 {
	fields := eGetFields(r)
	ints := make([]int64, len(fields))
	for i := 0; i < len(ints); i++ {
		ints[i] = eAtoInt64(fields[i])
	}
	return ints
}
func eGetChars(r *bufio.Scanner) []string {
	line := eGetLine(r)
	return strings.Split(line, "")
}
func eAtoi(s string) int {
	n, err := strconv.Atoi(s)
	if err != nil {
		log.Fatal(err)
	}
	return n
}
func eAtoInt64(s string) int64 {
	n, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		log.Fatal(err)
	}
	return n
}
func pow(a, n int) int {
	if n == 0 {
		return 1
	}
	if n == 1 {
		return a
	}
	if n%2 == 1 {
		return pow((a*a), n/2) * a
	}
	return pow((a * a), n/2)
}
func powMod(a, n, mod int) int {
	if n == 0 {
		return 1 % mod
	}
	if n == 1 {
		return a % mod
	}
	if n%2 == 1 {
		return powMod((a*a)%mod, n/2, mod) * a % mod
	}
	return powMod((a*a)%mod, n/2, mod)
}

func factoricalMod(n, count, mod int) int {
	if count == 1 {
		return n % mod
	}
	return (n % mod) * (factoricalMod(n-1, count-1, mod)) % mod
}

func combinationMod(n, a, mod int) int {
	x := factoricalMod(n, a, mod)
	y := factoricalMod(a, a, mod)
	y = powMod(y, mod-2, mod)
	return ((x % mod) * (y % mod)) % mod
}
func countBitOfOn(i, numbits int) int {
	count := 0
	var bit uint64
	for bit = 0; bit < uint64(numbits); bit++ {
		t := 1 << bit
		if i&t > 0 {
			count++
		}
	}
	return count
}
