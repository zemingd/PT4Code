# https://juppy.hatenablog.com/entry/2019/04/05/%E8%9F%BB%E6%9C%AC_Python_%E3%83%97%E3%83%A9%E3%82%A4%E3%82%AA%E3%83%AA%E3%83%86%E3%82%A3%E3%82%AD%E3%83%A5%E3%83%BC_2_heapq_%E7%AB%B6%E6%8A%80%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3
import heapq
#これを加える！！！！
def _heappush_max(heap, item):
    heap.append(item)
    heapq._siftdown_max(heap, 0, len(heap)-1)
def _heappop_max(heap):
    """Maxheap version of a heappop."""
    lastelt = heap.pop()    # raises appropriate IndexError if heap is empty
    if heap:
        returnitem = heap[0]
        heap[0] = lastelt
        heapq._siftup_max(heap, 0)
        return returnitem
    return lastelt

n,m,*a = map(int, open(0).read().split())


# a = [1,7,3,5,4]

# #heapify
# #配列a = [1,7,3,5,4]をheapにする
heapq._heapify_max(a)
# print(a) #[7, 5, 3, 1, 4]

# #heappop
# #最大値の取り出し
# print(_heappop_max(a)) #7
# print(a) #[5, 4, 3, 1]

# #heappush
# #要素(2)の挿入
# _heappush_max(a,2)
# print(a) #[5, 4, 3, 1, 2]

# #最大値の取り出し
# print(_heappop_max(a)) #5
s = sum(a)
d = 0
for i in range(m):
  t = _heappop_max(a)
  d += t-t//2
  _heappush_max(a, t//2)
  # print(a)

print(s-d)