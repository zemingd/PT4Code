package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

////////////////////////////////////////
///        templates                 ///
////////////////////////////////////////

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readBigLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func strSprit(str string) []string {
	cols := strings.Split(str, " ")
	return cols
}

func parseInt(str string) int {
	n, _ := strconv.Atoi(str)
	return n
}

func intSprit(str string) []int {
	strs := strSprit(str)
	cols := make([]int, len(strs))
	for i, v := range strs {
		cols[i] = parseInt(v)
	}
	return cols
}

////////////////////////////////////////
///        end templates             ///
////////////////////////////////////////

func calcs(m map[int]int) (c, max, mn int) {
	c, max, mn = 0, 0, 0
	for k, v := range m {
		if max < v {
			max = v
			mn = k
		}
		c += v
	}
	return c, max, mn
}

func main() {
	line := readBigLine()

	N := parseInt(line)

	ll := readBigLine()
	v := intSprit(ll)

	oddm := make(map[int]int, N)
	evem := make(map[int]int, N)

	for i := 0; i < N; i++ {
		if i%2 == 0 {
			if _, ok := evem[v[i]]; !ok {
				evem[v[i]] = 1
			} else {
				evem[v[i]]++
			}

		} else {
			if _, ok := oddm[v[i]]; !ok {
				oddm[v[i]] = 1
			} else {
				oddm[v[i]]++
			}
		}
	}

	ec, emax, emn := calcs(evem)

	oc, omax, omn := calcs(oddm)

	if emn == omn {
		if ec == emax && oc == omax {
			fmt.Println(N / 2)
			return
		}
		if emax > omax {
			t := omax
			oddm[omn] = 0
			oc, omax, omn = calcs(oddm)
			fmt.Println(ec - emax + oc - omax + t)
			return
		} else if emax <= omax {
			t := emax
			evem[emn] = 0
			ec, emax, emn = calcs(evem)
			fmt.Println(ec - emax + oc - omax + t)
			return
		}
	} else {
		fmt.Println(ec - emax + oc - omax)
		return
	}

}
