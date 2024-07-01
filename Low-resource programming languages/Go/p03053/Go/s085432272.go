package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	b := NewBoard()

	s := bufio.NewScanner(os.Stdin)

	//いらないので一行消している
	s.Scan()

	for s.Scan() {
		text := s.Text()

		marks := strings.Split(text, "")
		b.AddLine(marks...)
	}

	count := 0
	for {
		if len(b.NextBlackSwitch) == 0 {
			break
		}

		b.Reverse()
		count++
	}

	fmt.Print(count - 1)
}

const (
	blackMark = "#"
	whiteMark = "."
)

type Board struct {
	Squares         [][]*Square
	NextBlackSwitch []*Square
}

func NewBoard() *Board {
	return &Board{}
}

func (b *Board) AddLine(marks ...string) {
	line := make([]*Square, len(marks))

	for i := range marks {
		s := NewSquare(len(b.Squares), i, marks[i])
		if s.IsBlack() {
			b.NextBlackSwitch = append(b.NextBlackSwitch, s)
		}

		line[i] = s
	}

	if len(b.Squares) > 0 {
		for i := range line {
			b.Squares[len(b.Squares)-1][i].down = line[i]
			line[i].up = b.Squares[len(b.Squares)-1][i]
		}
	}

	for i := range line {
		if i != 0 {
			line[i].left = line[i-1]
		}

		if i+1 != len(line) {
			line[i].right = line[i+1]
		}
	}

	b.Squares = append(b.Squares, line)
}

func (b *Board) Reverse() {
	next := make([]*Square, 0)
	for i := range b.NextBlackSwitch {
		if b.NextBlackSwitch[i].up != nil {
			if already := b.NextBlackSwitch[i].up.Reverse(); !already {
				next = append(next, b.NextBlackSwitch[i].up)
			}
		}

		if b.NextBlackSwitch[i].down != nil {
			if already := b.NextBlackSwitch[i].down.Reverse(); !already {
				next = append(next, b.NextBlackSwitch[i].down)
			}
		}

		if b.NextBlackSwitch[i].right != nil {
			if already := b.NextBlackSwitch[i].right.Reverse(); !already {
				next = append(next, b.NextBlackSwitch[i].right)
			}
		}

		if b.NextBlackSwitch[i].left != nil {
			if already := b.NextBlackSwitch[i].left.Reverse(); !already {
				next = append(next, b.NextBlackSwitch[i].left)
			}
		}
	}

	b.NextBlackSwitch = next
}

type Square struct {
	line  int
	row   int
	mark  string
	up    *Square
	down  *Square
	right *Square
	left  *Square
}

func NewSquare(row int, line int, mark string) *Square {
	return &Square{
		line: line,
		row:  row,
		mark: mark,
	}
}

func (s *Square) IsBlack() bool {
	return s.mark == blackMark
}

func (s *Square) Reverse() (already bool) {
	if s == nil {
		return true
	}

	if s.IsBlack() {
		return true
	}

	s.mark = blackMark
	return false
}
