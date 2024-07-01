package main

import (
    "fmt"
    "sort"
)

type DrinkShop struct {
    Price int
    Stock int
}

func main() {
    var N int = scanInt()
    var M int = scanInt()
    var drink_shops []DrinkShop
    for i := 0; i < N; i++ {
        var A int = scanInt()
        var B int = scanInt()
        drink_shops = append(drink_shops, DrinkShop{ Price: A, Stock: B})
    }
    sort.Slice(drink_shops, func(i, j int) bool { return drink_shops[i].Price < drink_shops[j].Price })
    var total_cost int
    var number_of_drink int
    for i := 0; i < N; i++ {
        if number_of_drink + drink_shops[i].Stock < M {
            total_cost += drink_shops[i].Price * drink_shops[i].Stock
            number_of_drink += drink_shops[i].Stock
        } else {
            total_cost += drink_shops[i].Price * (M - number_of_drink)
            break
        }
    }
    fmt.Println(total_cost)
}

func scanInt() (num int) {
    fmt.Scan(&num)
    return
}

func scanInts(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}

func scanString() (str string) {
    fmt.Scan(&str)
    return
}

func scanStrings(len int) (strs []string) {
    var str string
    for i := 0; i < len; i++ {
        fmt.Scan(&str)
        strs = append(strs, str)
    }
    return
}