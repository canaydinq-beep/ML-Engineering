class Solution(object):
    def reverse(self, x):

      sign = -1 if x < 0 else 1
      calc = int(str(abs(x))[::-1]) * sign,
      return calc if (-2**31) <= calc <= (2**31 - 1) else 0
