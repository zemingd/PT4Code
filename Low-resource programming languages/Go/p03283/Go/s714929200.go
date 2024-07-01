package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

var si = bufio.NewScanner(os.Stdin)

func readInt() int {
        si.Scan()
        r, _ := strconv.Atoi(si.Text())
        return r

}

func main() {
        si.Split(bufio.ScanWords)
        si.Buffer(make([]byte, 0), 10000000)
        N, M, Q := readInt(), readInt(), readInt()
        m := [501][501]int{}
        for i := 0; i < M; i++ {
                l, r := readInt(), readInt()
                m[l][r] += 1
        }
        n := [501]int{}
        for i := 1; i <= N; i++ {
                for j := 1; j <= N; j++ {
                        n[j] = n[j] + m[i][j]
                        m[i][j] = m[i][j-1] + n[j]
                }
        }
        for i := 0; i < Q; i++ {
                l, r := readInt(), readInt()
                fmt.Println(m[r][r] - m[l-1][r] - m[r][l-1] + m[l-1][l-1])
        }
}