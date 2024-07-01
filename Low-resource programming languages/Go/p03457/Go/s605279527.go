package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    "sort"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
    sc.Split(bufio.ScanWords)
    n := nextInt()
    m := [][]int{}
    for i := 0; i < n; i++ {
        m = append(m, nextIntArr(3))
    }

    ans := "Yes"

    for i := 0; i < len(m); i++ {
        t := m[i][0]
        x := m[i][1]
        y := m[i][2]
        if t < x + y || t % (x + y) != 0 {
            ans = "No"
            break
        }
    }

    fmt.Println(ans)
}

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

