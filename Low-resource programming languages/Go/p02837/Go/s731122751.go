package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	//	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func bitCount(bits int) int {

	bits = (bits & 0x55555555) + (bits >> 1 & 0x55555555)
	bits = (bits & 0x33333333) + (bits >> 2 & 0x33333333)
	bits = (bits & 0x0f0f0f0f) + (bits >> 4 & 0x0f0f0f0f)
	bits = (bits & 0x00ff00ff) + (bits >> 8 & 0x00ff00ff)
	return (bits & 0x0000ffff) + (bits >> 16 & 0x0000ffff)
}

type person struct {
	n    int
	x, y []int
}

func main() {
	sc.Split(bufio.ScanWords)

	N := getInt()
	A := make([]person, N)
	for i := 0; i < N; i++ {
		A[i].n = getInt()
		A[i].x = make([]int, A[i].n)
		A[i].y = make([]int, A[i].n)
		for j := 0; j < A[i].n; j++ {
			A[i].x[j], A[i].y[j] = getInt()-1, getInt()
		}
	}

	out(N)
	for i := 0; i < N; i++ {
		out(A[i])
	}

	ans := 0
	for i := 0; i < 1<<N; i++ {
		tbl := make([]int, N)
		for i := 0; i < N; i++ {
			tbl[i] = -1
		}
		res := bitCount(i)
		for j := 0; j < N; j++ {
			bit := (i >> uint(j)) % 2
			//fmt.Print(bit, " ")
			if tbl[j] != -1 && tbl[j] != bit {
				out("missmatch")
				res = 0
				break
			}
			if bit == 1 {
				out("U:", j)
				for k, v := range A[j].x {
					if tbl[v] == -1 {
						tbl[v] = A[j].y[k]
					} else if tbl[v] != A[j].y[k] {
						out("mismatch")
						res = 0
						break
					}
				}
			} else {
				out("L:", j)
				for k, v := range A[j].x {
					out("  say:", v, "is", A[j].y[k])
					if tbl[v] == -1 {
						if A[j].y[k] == 1 {
							tbl[v] = 0
						} else {
							tbl[v] = 1
						}
					} else if tbl[v] == A[j].y[k] {
						out("mismatch")
						res = 0
						break
					}
				}
			}
		}
		out(" ", tbl, res)
		if ans < res {
			ans = res
		}
	}

	fmt.Println(ans)
}
