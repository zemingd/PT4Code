package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	N, M, K int
	edges   [154321][]int
	gSize   [154321]int
	group   [154321]int
)

func main() {
	readVariables()
	gIndex := 0
	for i := 0; i < N; i++ {
		if group[i] != -1 {
			continue
		}
		//bfs from i
		queue := make([]int, 0)
		queue = append(queue, i)
		group[i] = gIndex
		gSize[gIndex]++
		for len(queue) > 0 {
			v := queue[0]
			queue = queue[1:]
			for _, w := range edges[v] {
				if group[w] != -1 {
					continue
				}
				group[w] = gIndex
				gSize[i]++
				queue = append(queue, w)
			}
		}
		//bfs end
		gIndex++
		// fmt.Println("gIndex", gIndex)
	}
	answers := make([]int, N)
	for i := 0; i < N; i++ {
		// fmt.Println(i, group[i], gSize[group[i]], gSize[group[i]]-len(edges[i])-1)
		answers[i] = gSize[group[i]] - len(edges[i]) - 1
	}
	for i := 0; i < K; i++ {
		v, w := nextInt()-1, nextInt()-1
		if group[v] == group[w] {
			answers[v]--
			answers[w]--
		}
	}
	s := make([]string, N)
	for i := 0; i < N; i++ {
		s[i] = strconv.Itoa(answers[i])
	}
	fmt.Println(strings.Join(s, " "))
}

func adj(v, w int) bool {
	for _, x := range edges[v] {
		if x == w {
			return true
		}
	}
	return false
}

func readVariables() {
	N, M, K = nextInt(), nextInt(), nextInt()
	for i := 0; i < M; i++ {
		v, w := nextInt()-1, nextInt()-1
		edges[v] = append(edges[v], w)
		edges[w] = append(edges[w], v)
	}
	for i := 0; i < N; i++ {
		group[i] = -1
	}
}

/* Template */

var scanner *bufio.Scanner

func init() {
	Max := 1001001
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]byte, 0, Max), Max)
	scanner.Split(bufio.ScanWords)
}

//nextInt converts next token from stdin and returns integer value.
//nextInt panics when conversion into an integer fails.
func nextInt() int {
	if !scanner.Scan() {
		panic("No more token.")
	}
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic("nextInt(): cannot convert to int: " + scanner.Text())
	}
	return num
}

func nextStr() string {
	if !scanner.Scan() {
		panic("No more token.")
	}
	return scanner.Text()
}

// MinInt returns minimum argument
func MinInt(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

//MaxInt returns maximum argument
func MaxInt(x, y int) int {
	if x < y {
		return y
	} else {
		return x
	}
}

//AbsInt returns |x| for x
func AbsInt(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

//ModPow calculates integer power with modulo operation
//if modulo <= 1, it powers w/o module operation
//if base < 0, return value might be negative too.
func ModPow(base, exponent, modulo int) (result int) {
	result = 1
	for exponent > 0 {
		if exponent%2 == 1 {
			result *= base
			if modulo > 1 {
				result %= modulo
			}
		}
		base *= base
		if modulo > 1 {
			base %= modulo
		}
		exponent /= 2
	}
	return
}

//Gcd
func Gcd(vals ...int) (result int) {
	if len(vals) == 0 {
		return
	}
	result = vals[0]
	for i := 1; i < len(vals); i++ {
		result = gcd(result, vals[i])
	}
	return
}

func gcd(x, y int) int {
	x, y = AbsInt(x), AbsInt(y)
	for y > 0 {
		x, y = y, x%y
	}
	return x
}

//Lcm
func Lcm(vals ...int) (result int) {
	if len(vals) == 0 {
		return
	}
	result = vals[0]
	for i := 1; i < len(vals); i++ {
		result = lcm(result, vals[i])
	}
	return
}

func lcm(x, y int) int {
	return x * y / gcd(x, y)
}
