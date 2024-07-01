package main

import (
        "bufio"
        "fmt"
        "os"
        "sort"
        "strconv"
)

var si = bufio.NewScanner(os.Stdin)

const MAX = 1000000001

func readInt() int {
        si.Scan()
        ret, _ := strconv.Atoi(si.Text())
        return ret
}

func main() {
        si.Split(bufio.ScanWords)
        N := readInt()
        A := make([]int, N, N)
        for i := range A {
                A[i] = readInt()
        }
        dp := make([]int, 1, N+1)
        dp[0] = A[N-1]
        for i := N - 2; i >= 0; i-- {
                t := sort.Search(len(dp), func(j int) bool { return dp[j] > A[i] })
                if len(dp) > t && dp[t] > A[i] {
                        dp[t] = A[i]
                } else {
                        dp = append(dp, A[i])
                }
                sort.Ints(dp)
        }
        fmt.Println(len(dp))

}