package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readNextInt() int{
  sc.Scan()
  n, _ := strconv.Atoi(sc.Text())
  return n
}

func calcMaximumProfit(prices []int) int {
  profit := prices[1]-prices[0]
  maximumProfit := profit
  delta := profit
  minimumPrice := prices[0]
  for i:=1; i<len(prices); i++{
    delta = prices[i] - minimumPrice
    if prices[i] < minimumPrice {
      minimumPrice = prices[i]
    }
    if delta > maximumProfit{
      maximumProfit = delta
    }
  }
  return maximumProfit
}

func main() {
  //sc.Split(bufio.ScanWords)
  datanum := readNextInt()
  var inputs []int
  maximumProfit := 0

  for i:=0; i<datanum; i++{
    inputs = append(inputs,readNextInt())
  }

  maximumProfit = calcMaximumProfit(inputs)

  fmt.Println(maximumProfit)
}

