package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	x := readI()
	p := getPrimes(1e6)

	i := 0
	for ; p[i] < x; i++ {

	}
	fmt.Println(p[i])
}

func getPrimes(upperLimit int) (primes []int) {
	//Sieve of Eratosthenes
	fl := make([]bool, upperLimit+1)
	sqrtUpperLimit := sqrt(upperLimit)
	for i := 2; i <= sqrtUpperLimit; i++ {
		if fl[i] != true {
			primes = append(primes, i)
			for j := i; j <= upperLimit; j += i {
				fl[j] = true
			}
		} else {
			continue
		}
	}
	for i := sqrtUpperLimit + 1; i <= upperLimit; i++ {
		if fl[i] != true {
			primes = append(primes, i)
		}
	}
	return
}

func sqrt(n int) int {
	return int(math.Sqrt(float64(n)))
}

/*-----------Input utils-----------*/

var sc = bufio.NewScanner(os.Stdin)

func init() {
	if len(os.Args) >= 2 {
		if os.Args[1] == "debug" {
			debug()
		}
	}
	const buf = 200100
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, buf), buf)
}

func debug() {
	testFile, err := os.Open("./test/sample-1.in")
	if err != nil {
		fmt.Fprintln(os.Stderr, "There is no testfile.")
		os.Exit(1)
	}
	sc = bufio.NewScanner(testFile)
}

func readS() string {
	sc.Scan()
	return sc.Text()
}

func readR() []rune {
	return []rune(readS())
}

func readI() int {
	i, _ := strconv.Atoi(readS())
	return i
}

func readF() float64 {
	f, _ := strconv.ParseFloat(readS(), 64)
	return f
}
