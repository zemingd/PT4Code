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

func bitCount(n uint) int {

        x := uint64(n)

        const m = 1<<64 - 1
        const m0 = 0x5555555555555555
        const m1 = 0x3333333333333333
        const m2 = 0x0f0f0f0f0f0f0f0f

        x = x>>1&(m0&m) + x&(m0&m)
        x = x>>2&(m1&m) + x&(m1&m)
        x = (x>>4 + x) & (m2 & m)
        x += x >> 8
        x += x >> 16
        x += x >> 32

        return int(x) & (1<<7 - 1)
}

func bitExist(n, i int) bool {
        return ((n >> uint(i)) & 1) == 1
}

////////////////////////////////////////
///        end templates             ///
////////////////////////////////////////
func splitSlice(h []int) [][]int {
        ret := [][]int{}
        zi := []int{}
        for i, v := range h {
                if v == 0 {
                        zi = append(zi, i)
                }
        }
        if len(zi) <= 0 {
                return ret
        }

        if len(zi) == 1 {
                if zi[0] == 0 {
                        ret = append(ret, h[1:])

                } else {
                        ret = append(ret, h[:zi[0]])
                        ret = append(ret, h[zi[0]+1:])
                }
                return ret
        }

        if zi[0] != 0 {
                ret = append(ret, h[:zi[0]])
        }
        for i := 0; i < len(zi)-1; i++ {
                if zi[i+1]-zi[i] <= 1 {
                        continue
                }
                ret = append(ret, h[zi[i]+1:zi[i+1]])
        }

        //check last
        if zi[len(zi)-1] != (len(zi) - 1) {
                ret = append(ret, h[zi[len(zi)-1]+1:])
        }

        return ret
}
func initSlice(l [][]int) [][]int {
        p := l

        r := splitSlice(l[0])

        if len(r) <= 1 {
                return p
        }
        return r
}

func main() {
        _ = readBigLine()

        //N := intSprit(line)

        l := readBigLine()

        h := intSprit(l)

        list := [][]int{h}
        list = initSlice(list)

        sum := 0

        for {
                var t []int

                if len(list) <= 0 {
                        break
                }
                t, list = list[0], list[1:]

                if len(t) == 0 {
                        continue
                }
                if len(t) == 1 {
                        sum += t[0]
                        continue
                }

                min := 1000
                for _, v := range t {
                        if v < min {
                                min = v
                        }
                }
                for i := 0; i < len(t); i++ {
                        t[i] -= min
                }

                sum += min
                list = append(list, splitSlice(t)...)
        }

        fmt.Println(sum)
}