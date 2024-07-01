package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func main() {
	n := nextInt()
	as := make([]int, n)
	nn := make([]int, 0, n)

	for i := 0; i < n; i++ {
		as[i] = nextInt()
	}

	cache := map[int]int{}

	for i := n - 1; i >= 0; i-- {
		k := i + 1
		if v, ok := cache[k]; ok {
			// fmt.Printf("%#v\n", k)
			if v%2 == as[i] {
				continue
			}
			if as[i]%2 == 1 && v%2 == 0 {
				nn = append(nn, k)
				divs := Divisors(k)
				for _, item := range divs {
					cache[item]++
				}
			}
		} else {
			if as[i]%2 == 1 {
				nn = append(nn, k)
				divs := Divisors(k)
				for _, item := range divs {
					cache[item]++
				}
			}
		}

	}

	l := len(nn)
	fmt.Printf("%#v\n", l)
	if l > 0 {
		var s string
		for _, item := range nn {
			s += fmt.Sprintf("%d", item)
		}
		ss := strings.Split(s, "")
		fmt.Println(strings.Join(ss, " "))
	}
}

func Divisors(n int) []int {
	divisors := make([]int, 0, 1000)
	end := int(math.Pow(float64(n), 0.5) + 1)
	for i := 1; i < end; i++ {
		if n%i == 0 {
			divisors = append(divisors, i)
			if v := n / i; i != n/i {
				divisors = append(divisors, v)
			}
		}

	}
	return divisors
}
