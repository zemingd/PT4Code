package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type BC struct {
	B int
	C int
}

type ByC []BC

func (a ByC) Len() int           { return len(a) }
func (a ByC) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a ByC) Less(i, j int) bool { return a[i].C > a[j].C }

var (
	sc = bufio.NewScanner(os.Stdin)
	A []BC
	N int
)

func add(B, C int) {
	n := (N-1) / 2
	found := false
	if A[0].C == C {
		found = true
		n = 0
	} else if A[0].C < C {
		n = 0
	} else {
		L := 0
		R := N-1
		for {
			if A[n].C == C {
				found = true
				break
			} else if A[n].C < C {
				R = n-1
			} else {
				L = n+1
			}
			n = L + (R - L) / 2
			if R == L {
				break
			}
		}
	}

	if found {
		A[n].B += B
	} else {
		if n == 0 {
			p := []BC{BC{B:B, C:C}}
			A = append(p, A...)
		} else {
			A = append(A[:n+1], A[n:]...)
			A[n+1] = BC{B:B, C:C}
		}
	}
}

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main() {
	sc.Split(bufio.ScanWords)
	N = nextInt()
	M := nextInt()

	for i := 1; i <= N; i++ {
		a := nextInt()
		A = append(A, BC{B:1,C:a})
	}

	sort.Sort(ByC(A))

	for j := 1; j <= M; j++ {
		B := nextInt()
		C := nextInt()
		if A[N-1].C >= C {
			continue
		}
		add(B, C)
	}

	ans := 0
	cnt := 0
	for _, bc := range A {
		b := bc.B
		if cnt + b > N {
			b = N - cnt
		}
		ans += bc.C * b
		cnt += b
		if cnt == N {
			break
		}
	}
	fmt.Println(ans)
}