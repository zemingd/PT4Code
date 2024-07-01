package main

import (
	"fmt"
)

var w, h, x, y, isMultipleAnswer int
var res float64

// x = x
func p1() {
	if x < 2/w {
		res = float64(x * h)
	} else {
		res = float64((w - x) * h)
	}
}

// y = y
func p2() {
	_res := float64(y * w)
	if y >= 2/h {
		_res = float64((h - y) * w)
	}
	if _res > res {
		res = _res
	}
	if _res == res {
		isMultipleAnswer = 1
	}
}

// from (0, 0)
func p3() {
	_res := float64(0)
	if y >= 2/h {
		dX := (float64(x) / float64(y)) * float64(h)
		_res = (dX * float64(h)) / 2
	} else {
		dY := (float64(y) / float64(x)) * float64(w)
		_res = (dY * float64(w)) / 2
	}
	if _res == res {
		isMultipleAnswer = 1
	}
	if _res > res {
		res = _res
	}
}

// from (0, h)
func p4() {
	_res := float64(0)
	if (h - y) < 2/h {
		dX := (float64(x) / float64(h-y)) * float64(h)
		_res = (dX * float64(h)) / 2
	} else {
		dY := (float64(h-y) / float64(x)) * float64(w)
		_res = (dY * float64(w)) / 2
	}
	if _res == res {
		isMultipleAnswer = 1
	}
	if _res > res {
		res = _res
	}
}

// from (w, 0)
func p5() {
	_res := float64(0)
	if x >= 2/w {
		dX := (float64(w-x) / float64(y)) * float64(h)
		_res = (dX * float64(h)) / 2
	} else {
		dY := (float64(y) / float64(w-x)) * float64(w)
		_res = (dY * float64(w)) / 2
	}
	if !(x == 2/w && y == 2/h) && _res == res {
		isMultipleAnswer = 1
	}
	if _res > res {
		res = _res
	}
}

// from (w, h)
func p6() {
	_res := float64(0)
	if (w - x) < 2/w {
		dX := (float64(w-x) / float64(h-y)) * float64(h)
		_res = (dX * float64(h)) / 2
	} else {
		dY := (float64(h-y) / float64(w-x)) * float64(w)
		_res = (dY * float64(w)) / 2
	}
	if !(x == 2/w && y == 2/h) && _res == res {
		isMultipleAnswer = 1
	}
	if _res > res {
		res = _res
	}
}

func main() {
	fmt.Scanf("%d %d %d %d", &w, &h, &x, &y)

	isMultipleAnswer = 0
	res = float64(0)

	p1()
	p2()
	p3()
	p4()
	p5()
	p6()

	fmt.Printf("%f %d", res, isMultipleAnswer)
}
