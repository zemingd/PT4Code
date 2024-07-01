package main

import (
        "fmt"
        "sort"
)

type Order []int

func (o Order) Len() int {
        return len(o)
}

func (o Order) Swap(i, j int) {
        o[i], o[j] = o[j], o[i]
}

func (o Order) Less(i, j int) bool {
        if o[i]%10 == 0 {
                return true
        }
        return o[i]%10 > o[j]%10
}

func solution(order Order) int {
        sort.Sort(order)
        out := 0
        for i := 0; i < 4; i++ {
                t := 0
                if order[i]%10 == 0 {
                        t = order[i]
                } else {
                        t = order[i] + 10 - order[i]%10
                }
                out += t
        }
        return out + order[4]
}

func main() {
        order := make(Order, 0, 5)
        for i := 0; i < 5; i++ {
                n := 0
                fmt.Scan(&n)
                order = append(order, n)
        }
        fmt.Println(solution(order))
}