#
# @lc app=leetcode id=380 lang=python3
#
# [380] Insert Delete GetRandom O(1)
#

# @lc code=start
import random
class RandomizedSet:

    def __init__(self):
        self.r_set = set()


    def insert(self, val: int) -> bool:
        if val in self.r_set:
            return False
        self.r_set.add(val)
        return True

    def remove(self, val: int) -> bool:
        if val in self.r_set:
            self.r_set.remove(val)
            return True
        return False

    def getRandom(self) -> int:
        random_idx = random.randint(0,len(self.r_set)-1)
        for idx, item in enumerate(self.r_set):
            if idx == random_idx:
                return item




# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.getRandom()
# @lc code=end
