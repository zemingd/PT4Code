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
	fmt.Println(resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) int {
	const (
		initialBufSize = 100000
		maxBufSize     = 1000000
	)
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	n := scanInt(sc)
	return n
}

func resolve(n int) int {
	if n < 2 {
		return 0
	}
	if isPrime(n) {
		return 1
	}
	terms := map[int]int{}
	max := 0
	for p := range primes(n) {
		terms[p] = numP(n, p)
		if max < terms[p] {
			max = terms[p]
		}
	}
	initSeparationNum(max)
	result := 0
	for _, iN := range terms {
		if iN == 0 {
			continue
		}
		result += separationNum[iN]
	}
	return result
}

func isPrime(n int) bool {
	max := int(math.Sqrt(float64(n)))
	for i := 2; i <= max+1; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

var separationNum map[int]int
var separationState map[int][]int

func initSeparationNum(n int) {
	separationNum = map[int]int{1: 1}
	separationState = map[int][]int{1: []int{1}}

	for i := 2; i <= n; i++ {
		sepNum := separationNum[i-1]
		preState := separationState[i-1]
		if preState[0] != 1 {
			state := []int{1}
			for _, v := range preState {
				state = append(state, v)
			}
			separationNum[i] = sepNum + 1
			separationState[i] = state
		} else {
			idx := -1
			for j := 1; j < len(preState); j++ {
				if preState[j]-1 != preState[j-1] {
					idx = j
					break
				}
			}
			state := []int{}
			if idx == -1 {
				for j := 0; j < len(preState)-1; j++ {
					state = append(state, preState[j])
				}
				state = append(state, preState[len(preState)-1]+1)
			} else {
				for j := 0; j < idx-1; j++ {
					state = append(state, preState[j])
				}
				state = append(state, preState[idx-1]+1)
				for j := idx; j < len(preState); j++ {
					state = append(state, preState[j])
				}
			}
			separationNum[i] = sepNum
			separationState[i] = state
		}
	}
	return
}

type intSet map[int]none

func newIntSet() intSet {
	return map[int]none{}
}

func (s intSet) add(i int) (added bool) {
	_, ok := s[i]
	added = !ok
	s[i] = mark
	return
}

func (s intSet) remove(i int) (removed bool) {
	_, removed = s[i]
	delete(s, i)
	return
}

func (s intSet) doesContain(i int) bool {
	_, ok := s[i]
	return ok
}

func (s intSet) size() int {
	return len(s)
}

func (s intSet) members() chan int {
	ch := make(chan int)
	go func() {
		defer close(ch)
		for k := range s {
			ch <- k
		}
	}()
	return ch
}

type none struct{}

var mark none

func numP(n, p int) (i int) {
	for n > 0 {
		if n%p != 0 {
			break
		}
		i++
		n = n / p
	}
	return i
}

func primes(n int) chan int {
	max := int(math.Sqrt(float64(n))) + 1
	isPrime := make([]bool, max+1)
	for i := 2; i < len(isPrime); i++ {
		isPrime[i] = true
	}

	for i := 2; i < len(isPrime); i++ {
		if !isPrime[i] {
			continue
		}
		for j := 2; j*i < len(isPrime); j++ {
			isPrime[j*i] = false
		}
	}

	ch := make(chan int)
	go func() {
		for i := 2; i < len(isPrime); i++ {
			if !isPrime[i] {
				continue
			}
			ch <- i
		}
		close(ch)
	}()
	return ch
}

// snip-scan-funcs
func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
