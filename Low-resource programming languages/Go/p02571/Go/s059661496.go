package solution

import (
	"errors"
)

const (
	minLength = 1
	maxLength = 1000
)

var (
	ErrLength         = errors.New("S,T は 1 ⽂字以上 1000 ⽂字以下")
	ErrRelativeLength = errors.New("T の⻑さは S の⻑さ以下")
	ErrNotLetter      = errors.New("S,T は 英⼩⽂字のみを含む")
)

type Solution struct {
	S, T string
}

func New(S, T string) *Solution {
	return &Solution{
		S: S,
		T: T,
	}
}

func (s *Solution) Validate() error {
	if s.isValidLength(s.S) {
		return ErrLength
	}
	if s.isValidLength(s.T) {
		return ErrLength
	}
	if len(s.S) < len(s.T) {
		return ErrRelativeLength
	}
	if !s.isLetter(s.S) {
		return ErrNotLetter
	}
	if !s.isLetter(s.T) {
		return ErrNotLetter
	}
	return nil
}

// MinimumCharacters returns a minimum number of characters that for
// changing T to become a substring of S.
//
// For example:
// - S: cabacc
// - T: abc
//
// Steps:
//    cabacc
// 1. abc    : 3
// 2.  abc   : 1
// 3.   abc  : 2
// 4.    abc : 1
func (s *Solution) MinimumCharacters() int {
	// Initialize the best result to the maximum - if the characters in S and
	// in T are in an empty set. In other words, every character in T does not
	// exist in S.
	res := len(s.T)
	for i := 0; i+len(s.T) <= len(s.S); i++ {
		num := 0
		for j := 0; j < len(s.T); j++ {
			if s.S[j+i] != s.T[j] {
				num++
			}
		}
		// If this result is better than the current best result.
		if num < res {
			res = num
		}
		// If T is already a substring of S, we can do an early return.
		if num == 0 {
			return 0
		}
	}
	return res
}

func (s *Solution) isValidLength(str string) bool {
	n := len(str)
	return n < minLength || n > maxLength
}

func (s *Solution) isLetter(str string) bool {
	for _, r := range str {
		if !(r >= 'a' && r <= 'z') {
			return false
		}
	}
	return true
}
