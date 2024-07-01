package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    "sort"
    "math"
)

var sc = bufio.NewScanner(os.Stdin)

func min(a, b int) int {
    if a > b {
        return b
    }
    return a
}

func main() {
    sc.Split(bufio.ScanWords)

    n, k := nextInt(), nextInt()

    n1 := n - (n / k) * k
    n2 := math.Abs(float64(n - ((n / k) + 1) * k))

    fmt.Println(min(n1, int(n2)))
}

// Library

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func nextInt() int {
    sc.Scan()
    i, _ := strconv.Atoi(sc.Text())
    return i
}

func nextIntArr(n int) []int {
    var a []int
    for i := 0; i < n; i++ {
        a = append(a, nextInt())
    }
    return a
}

// 数値を桁区切りのスライスにする
func digit(n int, list []int) []int {
   if n > 0 {
       return digit(n/10, append(list, n%10))
   }
   return list
}

func sortIntsRev(list []int) {
    sort.Sort(sort.Reverse(sort.IntSlice(list)))
}

func strReverse(s string) string {
    runes := []rune(s)
    for i := 0; i < len(s)/2; i++ {
        runes[i], runes[len(s)-1-i] = runes[len(s)-1-i], runes[i]
    }
    return string(runes)
}

