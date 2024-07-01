package main

import (
    "bufio"
    "os"
    "strings"
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

func main() {
    var m, q int
    var l, r int
    var a, b int
    var mp [HEIGHT][WIDTH]int
    nmq := readLineToInt()
    _, m, q = nmq[0], nmq[1], nmq[2]
    //sc.Scan()
    //fmt.Sscanf(sc.Text(), "%d %d %d", &n, &m, &q)

    for i := 0; i < m; i++ {
        lr := readLineToInt()
        l, r = lr[0], lr[1]
        //sc.Scan()
        //fmt.Sscanf(sc.Text(), "%d %d", &l, &r)
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

    for i := 0; i < q; i++ {
        ab := readLineToInt()
        a, b = ab[0], ab[1]
        //sc.Scan()
        //fmt.Sscanf(sc.Text(), "%d %d", &a, &b)
        fmt.Println(mp[b][b] - mp[b][a - 1] - mp[a - 1][b] + mp[a - 1][a - 1])
    }
}