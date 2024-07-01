package main

import (
	"fmt"
)


const (
	MinN int = 1
	MaxN int = 1e5
	MinM int = 1
	MaxM int = 1e9
	MinA int = 2
	MaxA int = 1e9
)

var (
	ErrN = fmt.Errorf("%d≤N≤%d", MinN, MaxN)
	ErrM = fmt.Errorf("%d≤M≤%d", MinM, MaxM)
	ErrA = fmt.Errorf("%d≤ai≤%d", MinA, MaxA)
)

type Solution struct {
	N, M int
	A    []int
}

func New(N, M int, A []int) *Solution {
	return &Solution{
		N: N,
		M: M,
		A: A,
	}
}

func (s *Solution) Validate() error {
	if !s.inRange(s.N, MinN, MaxN) {
		return ErrN
	}
	if !s.inRange(s.M, MinM, MaxM) {
		return ErrM
	}
	for _, i := range s.A {
		if !s.inRange(i, MinA, MaxA) {
			return ErrA
		}
	}
	return nil
}

func (s *Solution) HalfLCM() int {
	lcm := s.A[0] / 2
	for _, num := range s.A[1:] {
		i := num / 2
		lcm = lcm * i / s.gcd(lcm, i)
	}
	n := s.M / lcm
	return n/2 + n%2
}

func (s *Solution) gcd(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

func (s *Solution) inRange(x, min, max int) bool {
	return x >= min && x <= max
}

func main() {
	var n, m int
	_, _ = fmt.Scanf("%d %d", &n, &m)
	var a []int
	for i := 0; i < n; i++ {
		var x int
		_, _ = fmt.Scanf("%d", &x)
		a = append(a, x)
	}
	var s Solution
	s.N = n
	s.M = m
	s.A = a

	fmt.Printf("%d", s.HalfLCM())
}
