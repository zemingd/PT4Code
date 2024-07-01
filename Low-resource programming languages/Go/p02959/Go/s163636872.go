package main

import "fmt"
import "bufio"
import "os"
import "strconv"

var _sw = bufio.NewScanner(os.Stdin)

func main() {
	N := NextInt()

	var (
		T = make([]int, N+1)
		F = make([]int, N)
	)
	for i := range T {
		T[i] = NextInt()
	}
	for i := range F {
		F[i] = NextInt()
	}

	C := make([]int, N*2)
	for k := 0; k < N; k++ {
		if k == 0 {
			C[0] = Min(T[0], F[0])
		} else {
			C[2*k] = Min(T[k]-C[2*k-1], F[k])
		}
		C[2*k+1] = Min(T[k+1], F[k]-C[2*k])
	}

	sum := 0
	for _, c := range C {
		sum += c
	}
	fmt.Println(sum)
}

func init() {
	_sw.Split(bufio.ScanWords)
}

func NextInt() int {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	i, e := strconv.Atoi(_sw.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func NextString() string {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	return _sw.Text()
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func Min(x, y int) int {
	if x > y {
		return y
	}
	return x
}
