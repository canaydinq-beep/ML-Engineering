# Since the array given to us is a sorted array, we can proceed by continuously decrement the range we are searching by half by taking advantage of the magnitude - smallness
# relationships of the numbers with each other.

class Solution(object):
    def searchInsert(self, nums, target):

      start = 0
      mid = 0
      end = len(nums) - 1

    while start <= end:
      mid = (start + end) // 2

      if nums[mid] == target:
        return mid
      elif target > nums[mid]:
        start = mid + 1
      else:
        end = mid - 1

    return start



      
