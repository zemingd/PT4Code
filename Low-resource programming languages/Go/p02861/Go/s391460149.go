package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	fmt.Printf("%f\n", resolve(parseProblem(os.Stdin)))
}

type city struct{ x, y int }

func parseProblem(r io.Reader) (cities []city) {
	var n int
	fmt.Fscanf(r, "%d", &n)
	sc := bufio.NewScanner(r)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	for i := 0; i < n; i++ {
		x := scanInt(sc)
		y := scanInt(sc)
		cities = append(cities, city{x, y})
	}
	return cities
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}

func resolve(cities []city) float64 {
	l := len(cities)
	sum := 0.0
	num := 0
	for p := range permutations(l) {
		sum += length(p, cities)
		num++
	}
	return sum / float64(num)
}

func length(perm []int, cities []city) float64 {
	l := len(perm)
	var sum float64
	for i := 0; i < l-1; i++ {
		sum += dist(cities[perm[i]], cities[perm[i+1]])
	}
	return sum
}

func dist(s, t city) float64 {
	return math.Sqrt(math.Pow(float64(s.x-t.x), 2) + math.Pow(float64(s.y-t.y), 2))
}

func permutations(l int) chan []int {
	ch := make(chan []int)
	go func() {
		dfsPermutations(0, make([]bool, l), []int{}, func(perm []int) bool {
			p := make([]int, len(perm))
			copy(p, perm)
			ch <- p
			return false
		})
		close(ch)
	}()
	return ch
}

func dfsPermutations(pos int, used []bool, perm []int, atLeaf func(perm []int) (halt bool)) (halt bool) {
	l := len(used)
	if pos == l {
		if atLeaf(perm) {
			return true
		}
	}

	for i := 0; i < l; i++ {
		if used[i] {
			continue
		}
		used[i] = true
		if dfsPermutations(pos+1, used, append(perm, i), atLeaf) {
			return true
		}
		used[i] = false
	}
	return false
}
