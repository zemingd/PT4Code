package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	ans int
	cnt int
)
type BinaryNode struct {
	B int
	C int
	Left *BinaryNode
	Right *BinaryNode
}

type BinaryTree struct {
	Root *BinaryNode
}

func (n *BinaryTree) Add(b, c int) {
	if n.Root == nil {
		n.Root = &BinaryNode{B:b, C:c}
	} else {
		n.Root.Add(b, c)
	}
}

func (t *BinaryTree) Sum(N int) {
	t.Root.Sum(N)
}

func (n *BinaryNode) Sum(N int) {
	if n.Left != nil {
		n.Left.Sum(N)
	}
	if cnt == N {
		return
	}
	b := n.B
	if cnt + b > N {
		b = N - cnt
	}
	ans += b * n.C
	cnt += b
	if cnt == N {
		return
	}
	if n.Right != nil {
		n.Right.Sum(N)
	}
	return
}

func (n *BinaryNode) Add(b, c int) {
	if n.C == c {
		n.B += b
	} else if n.C < c {
		if n.Left != nil {
			n.Left.Add(b, c)
		} else {
			n.Left = &BinaryNode{B:b, C:c}
		}
	} else {
		if n.Right != nil {
			n.Right.Add(b, c)
		} else {
			n.Right = &BinaryNode{B:b, C:c}
		}
	}
}

var (
	sc = bufio.NewScanner(os.Stdin)
)

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
	N := nextInt()
	M := nextInt()

	t := &BinaryTree{}
	for i := 1; i <= N; i++ {
		a := nextInt()
		t.Add(1, a)
	}

	for j := 1; j <= M; j++ {
		B := nextInt()
		C := nextInt()
		t.Add(B, C)
	}

	t.Sum(N)
	fmt.Println(ans)
}