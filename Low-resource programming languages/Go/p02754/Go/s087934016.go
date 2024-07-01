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
    n, a, b := nextInt(), nextInt(), nextInt()

    blue := n / (a + b) * a

    if n % (a + b) > a {
        blue += a
    } else {
        blue += n % (a + b)
    }

    fmt.Println(blue)
}




//===========================
//
// Library
//
//===========================

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}

func min(a, b int) int {
    if a < b {
        return a
    }
    return b
}

func gcd(x, y int) int {
    if y == 0 {
        return x
    }

    return gcd(y, x%y)
}

//====================
//  var q Queue
//  q.Enqueue(n)
//  n := q.Dequeue()
//====================
type Queue struct {
    data []int
}

func (q *Queue) Enqueue(n int) {
    q.data = append(q.data, n)
}

func (q *Queue) Dequeue() int {
    tmp := q.data[0]
    q.data = q.data[1:]
    return tmp
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

