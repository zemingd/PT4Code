package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() (ret string) {

	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			return ""
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

type Utls struct {
}

type uString string

var utls = &Utls{}

func (u *Utls) readLineU() uString {
	return uString(readLine())
}

func (u *Utls) atoi(str string) int {
	r, _ := strconv.Atoi(str)
	return r
}
func (u *Utls) itoa(n int) string {
	r := strconv.Itoa(n)
	return r
}
func (u uString) atoi() int {
	r, err := strconv.Atoi(string(u))
	if err != nil {
		return -1
	}
	return r
}
func (u uString) atoiArr() []int {
	ret := make([]int, 0)

	l := strings.Split(string(u), " ")

	for i := 0; i < len(l); i++ {
		s := (uString(l[i]))

		ret = append(ret, s.atoi())

	}
	return ret
}
func (u uString) String() string {
	return string(u)
}

func main() {
	n:=	utls.readLineU().atoi()
	a:=0
	w:=0
	t:=0
	r:=0
	for i:=0 ; i< n ; i++ {
		l:=readLine()
		switch l{
		case "TLE":
			t++
		case "AC":
			a++
		case "WA":
			w++
		case "RE":
			r++
		}
	}
ac:=	"AC x %d\n"
wa:=	"WA x %d\n"
tle:=	"TLE x %d\n"
re:=	"RE x %d\n"
	fmt.Printf(ac ,a)
	fmt.Printf(wa,w)
	fmt.Printf(tle,t)
	fmt.Printf(re,r)
}



