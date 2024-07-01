package main

import (
    "bufio"
    "os"
//    "strings"
    "strconv"
    "fmt"
)

const WIDTH = 502
const HEIGHT = 502

/*
var nrs = bufio.NewReaderSize(os.Stdin, 1000000)

func readLineToInt() []int {
    buf := make([]byte, 0, 1000000)
    for {
        l, p, e := nrs.ReadLine()
        if e != nil {
            panic(e)
        }
        buf = append(buf, l...)
        if !p {
            break
        }
    }
    line := strings.Split(string(buf), " ")
    var intLine []int
    for _, str := range line {
        n, _ := strconv.Atoi(str)
        intLine = append(intLine, n)
    }
    return intLine
}
*/

/*
var sc = bufio.NewScanner(os.Stdin)

func readLineToInt() []int {
    sc.Scan()
    line := strings.Split(sc.Text(), " ")
    var intLine []int
    for _, str := range line {
        n, _ := strconv.Atoi(str)
        intLine = append(intLine, n)
    }
    return intLine
}
*/

func scanInt(sc *bufio.Scanner) int {
    sc.Scan()
    v, _ := strconv.Atoi(sc.Text())
    return v
}

func main() {
    sc := bufio.NewScanner(os.Stdin)
    sc.Split(bufio.ScanWords)
    var m, q int
    var l, r int
    var a, b int
    var mp [HEIGHT][WIDTH]int
    //nmq := readLineToInt()
    _, m, q = scanInt(sc), scanInt(sc), scanInt(sc)
    //sc.Scan()
    //fmt.Sscanf(sc.Text(), "%d %d %d", &n, &m, &q)


    for i := 0; i < m; i++ {
        //lr := readLineToInt()
        //l, r = lr[0], lr[1]
        //sc.Scan()
        //fmt.Sscanf(sc.Text(), "%d %d", &l, &r)
        l, r = scanInt(sc), scanInt(sc)
        mp[l][r] += 1
    }

    for x := 0; x < WIDTH - 1; x++ {
        mp[0][x] += mp[0][x + 1]
    }

    for y := 1; y < HEIGHT; y++ {
        for x := 0; x < WIDTH - 1; x++ {
            mp[y][x + 1] += mp[y][x]
            mp[y][x] += mp[y - 1][x]
        }
    }
    out := bufio.NewWriter(os.Stdout)
    for i := 0; i < q; i++ {
        //ab := readLineToInt()
        //a, b = ab[0], ab[1]
        //sc.Scan()
        //fmt.Sscanf(sc.Text(), "%d %d", &a, &b)
        a, b = scanInt(sc), scanInt(sc)
        fmt.Fprintln(out, mp[b][b] - mp[b][a - 1] - mp[a - 1][b] + mp[a - 1][a - 1])
    }
    out.Flush()
}