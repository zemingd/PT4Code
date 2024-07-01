package main

import (
    "fmt"
    "os"
    "bufio"
    "sort"
    "math"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

    sc.Split(bufio.ScanWords)
    n := nextInt()
    xy := make([][2]int, n)

    for i := 0; i < n; i++ {
        xy[i][0] = nextInt()
        xy[i][1] = nextInt()
    }

    var perm []int
    factorial := 1
    for i := 1; i <= n; i++ {
        perm = append(perm, i)
        factorial *= i
    }

    total := 0.0
    for {

        for i := 1; i < n; i++ {
            x := (xy[perm[i]-1][0] - xy[perm[i-1]-1][0]) *
                        (xy[perm[i]-1][0] - xy[perm[i-1]-1][0])
            y := (xy[perm[i]-1][1] - xy[perm[i-1]-1][1]) *
                        (xy[perm[i]-1][1] - xy[perm[i-1]-1][1])
            total += math.Sqrt(float64(x+y))
        }

        if !nextPermutation(perm) {
            break
        }
    }
    fmt.Println(total / float64(factorial))

}



//==================================================
//
// Library
//
//==================================================

//===========================
//  round(12.54, 0) -> 13.0
//  round(12.54, -1) -> 12.5
//===========================

func round(num float64, digit uint) float64 {
    d := float64(digit)
    return float64(int(num * math.Pow(10, d) + 0.5)) / math.Pow(10, d)
}

func abs(n int) int {
    return int(math.Abs(float64(n)))
}

func max(a, b int) int {
    return int(math.Max(float64(a), float64(b)));
}

func min(a, b int) int {
    return int(math.Min(float64(a), float64(b)));
}

func gcd(x, y int) int {
    if y == 0 {
        return x
    }

    return gcd(y, x%y)
}

//===========================
//  var q Queue
//  q.Enqueue(n)
//  n := q.Dequeue()
//===========================
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

func nextInt() int {
    sc.Scan()
    i, _ := strconv.Atoi(sc.Text())
    return i
}

func nextStr() string {
    sc.Scan()
    return sc.Text()
}

func swap(a, b int) (int, int) {
    return b, a
}

func mySort(list []int, start int, end int) {
    var l []int
    for i := start; i < end; i++ {
        l = append(l, list[i])
    }
    sort.Ints(l)

    j := 0
    for i := start; i < end; i++ {
        list[i] = l[j]
        j++
    }
}

func mySortRev(list []int, start int, end int) {
    var l []int
    for i := start; i < end; i++ {
        l = append(l, list[i])
    }

    sortIntsRev(l)

    j := 0
    for i := start; i < end; i++ {
        list[i] = l[j]
        j++
    }
}

func nextPermutation(array []int) bool {
    n := len(array)

    for i:= n - 2; i >= 0; i-- {
        if array[i] < array[i+1] {
            j := n;
            for {
                j--;
                if (array[i] < array[j]) {
                    break
                }
            }
            array[i], array[j] = swap(array[i], array[j])
            mySort(array, i + 1, n)
            return true
        }
        if i == 0 {
            mySortRev(array, 0, n)
        }
    }
    return false
}

