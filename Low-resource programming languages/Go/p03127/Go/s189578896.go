package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()

	var monsters []int
	for i := 0; i < n; i++ {
		monsters = append(monsters, readInt())
	}

	fmt.Println(solve(n, monsters))
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func solve(n int, monsters []int) int {
	m := make(map[int]int)
	slim := make([]int, 0)
	for _, element := range monsters {
		if _, ok := m[element]; !ok {
			m[element] = 0
			slim = append(slim, element)
		}
	}
	if len(slim) == 1 {
		return slim[0]
	}
	answer := gcd(slim[0], slim[1])
	for i, monster := range slim {
		if i <= 1 {
			continue
		}
		answer = gcd(answer, monster)
	}
	return answer

}