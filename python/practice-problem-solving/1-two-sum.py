class Solution(object):
    def twoSum(self, nums, target):

      target_map = {}

      for i, num in enumerate(nums):
        
        complement = target - num
        if complement in target_map:
          return [target_map[complement], i]
        else:
          target_map[num] = i
