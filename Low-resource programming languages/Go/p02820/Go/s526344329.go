package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
        "strings"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
        // TODO: メモリの使用量がやばいので Token ごとに読む
        // Reference: https://atcoder.jp/contests/abc148/submissions/9067537
        bufsize := 100 * 1024 * 1024
        sc.Buffer(make([]byte, bufio.MaxScanTokenSize), bufsize)
}
func readInt() int              { return readIntArray()[0] }
func readInt2() (int, int)      { a := readIntArray(); return a[0], a[1] }
func readInt3() (int, int, int) { a := readIntArray(); return a[0], a[1], a[2] }
func readIntArray() []int {
        a := make([]int, 0, 1000)
        sc.Scan()
        for _, v := range strings.Split(sc.Text(), " ") {
                vv, _ := strconv.Atoi(v)
                a = append(a, vv)
        }
        return a
}
func readString() string            { return readStringArray()[0] }
func readString2() (string, string) { a := readStringArray(); return a[0], a[1] }
func readStringArray() []string     { sc.Scan(); return strings.Split(sc.Text(), " ") }

func main() {
        _, k := readInt2()
        r, s, p := readInt3()
        t := readString()

        queue := make([]rune, 0, k)
        for i := 0; i < k; i++ {
                queue = enq(queue, 'n')
        }

        //var ng rune
        //fmt.Printf("%s, %v\n", 'n', queue)
        //queue = enq(queue, 'r')
        //queue, ng = deq(queue)
        //fmt.Printf("%s, %v\n", ng, queue)
        //queue = enq(queue, 's')
        //queue, ng = deq(queue)
        //fmt.Printf("%s, %v\n", ng, queue)
        //queue = enq(queue, 'p')
        //queue, ng = deq(queue)
        //fmt.Printf("%s, %v\n", ng, queue)
        //return

        var point int
        var ng rune
        for i := range t {
                best, pts := win(r, s, p, rune(t[i]))
                //fmt.Printf("best: %s, pts: %d\n", string(best), pts)
                queue, ng = deq(queue)
                //fmt.Printf("ng: %s\n", string(ng))
                if ng == 'n' {
                        // win
                        point += pts
                        queue = enq(queue, best)
                } else if saki := peek(t, i, k); saki == 'n' {
                        if ng == best {
                                // aiko or lose
                                queue = enq(queue, 'n')
                        } else {
                                // win
                                point += pts
                                queue = enq(queue, best)
                        }
                        queue = enq(queue, 'n')
                } else {
                        if ng == best {
                                // aiko or lose
                                futurebest, _ := win(r, s, p, saki)
                                queue = enq(queue, sel(best, futurebest))
                        } else {
                                // win
                                point += pts
                                queue = enq(queue, best)
                        }
                }
        }

        fmt.Println(point)
}

func deq(q []rune) ([]rune, rune) {
        r := q[0]
        return q[1:], r
}

func enq(q []rune, e rune) []rune {
        return append(q, e)
}

func peek(t string, i, k int) rune {
        if !(len(t) > i+k) {
                return 'n'
        }
        r := rune(t[i+k])
        return r
}

func sel(r1, r2 rune) rune {
        m := map[rune]bool{'r': true, 's': true, 'p': true}
        m[r1] = false
        m[r2] = false
        for k, v := range m {
                if v {
                        return k
                }
        }
        return 'n'
}

// rune and point
func win(r, s, p int, h rune) (rune, int) {
        switch h {
        case 'r':
                return 'p', p
        case 's':
                return 'r', r
        case 'p':
                return 's', s
        }
        return 'n', 0
}
