package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	In := readLineInt()
	A, B := In[0], In[1]
	AMap, BMap := map[int]int{}, map[int]int{}
	End := max(A, B)
	for prime := 2; prime <= End; prime++ {
		isPrime := true
		for p := 2; p < prime; p++ {
			if (prime % p) == 0 {
				isPrime = false
				break
			}
		}

		if isPrime {
			p, c := multiplier(A, prime)
			if c != -1 {
				A /= p
				AMap[prime] = c
			}

			p, c = multiplier(B, prime)
			if c != -1 {
				B /= p
				BMap[prime] = c
			}
		}

		if A == 1 && B == 1 {
			break
		}
	}

	Max := AMap
	for k, v := range BMap {
		mv := Max[k]
		Max[k] = max(mv, v)
	}

	result := 1
	for k, v := range Max {
		result *= pow(k, v)
	}
	fmt.Println(result)
}

func multiplier(value int, prime int) (int, int) {
	now, previous, count := 1, 0, 1
	for {
		now = now * prime
		if value%now != 0 {
			if previous != 0 {
				value = value / previous
				return previous, count - 1
			}
			break
		} else {
			previous = now
		}
		count++
	}
	return -1, -1
}

/////////////////////////////////////////
func readLineInt() []int {
	result := make([]int, 0)
	for _, v := range strings.Split(readLine(), " ") {
		i, _ := strconv.Atoi(v)
		result = append(result, i)
	}
	return result
}

var reader = bufio.NewReaderSize(os.Stdin, 1e6)

func readLine() string {
	result := make([]byte, 0, 1e6)
	for {
		line, remains, e := reader.ReadLine()
		if e != nil {
			panic(e)
		}
		result = append(result, line...)
		if !remains {
			break
		}
	}
	return string(result)
}

func Loop(start, end int, f func(i int)) {
	for i := start; i < end; i++ {
		f(i)
	}
}

func pow(a, b int) int {
	result := a
	Loop(0, b-1, func(i int) {
		result = result * a
	})

	return result
}

func max(a ...int) int {
	result := 0

	for _, i := range a {
		if result < i {
			result = i
		}
	}

	return result
}
