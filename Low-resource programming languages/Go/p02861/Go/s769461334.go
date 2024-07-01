package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const mod = 1000000007

// 1MB
const ioBufferSize = 1 * 1024 * 1024

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type Town struct {
	Index int
	X     int
	Y     int
}

func Distance(t1, t2 Town) float64 {
	return math.Sqrt(float64((t1.X-t2.X)*(t1.X-t2.X) + (t1.Y-t2.Y)*(t1.Y-t2.Y)))
}

func nextPerm(arr []Town) func() []Town {
	/*
		how to use it:
			this is a generator, so should be invoked such as below example.
			"""code"""
			np := nextPermutation(arr)
			for{
				lis := np()
				if len(lis) == 0{
					break
				}
				fmt.Println(lis)
			}
			"""code end"""
	*/
	first := true
	ret := append([]Town{}, arr...)
	_nextPerm := func() []Town {
		if first {
			first = false
			return arr
		}
		n := len(ret)
		for i := n - 2; i >= 0; i-- {
			if ret[i].Index < ret[i+1].Index {
				j := n
				for {
					j--
					if ret[i].Index < ret[j].Index {
						break
					}
				}
				ret[i], ret[j] = ret[j], ret[i]
				for k := n - 1; i < k; i, k = i+1, k-1 {
					ret[i+1], ret[k] = ret[k], ret[i+1]
				}
				return ret
			}
		}
		return []Town{}
	}
	return _nextPerm
}

func main() {
	n := nextInt()
	ts := make([]Town, n)

	for i := 0; i < n; i++ {
		ts[i] = Town{i, nextInt(), nextInt()}
	}

	sum, count := 0.0, 0.0
	np := nextPerm(ts)
	for {
		l := np()
		if len(l) == 0 {
			break
		}

		count += 1.0
		for i := 0; i < n-1; i++ {
			sum += Distance(l[i], l[i+1])
		}
	}

	fmt.Println(sum / count)
}
