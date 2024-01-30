# --------- Counting sheep ----------
# DESCRIPTION:
# Consider an array/list of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).
# EXAMPLE:
mysheep = [True,  True,  True,  False,
  True,  True,  True,  True ,
  True,  False, True,  False,
  True,  False, False, True ,
  True,  True,  True,  True ,
  False, False, True,  True]
# The correct answer would be 17.

#iterate through the array
#count how many trues in the list
# return count

def count_sheep(alist):
    count = 0
    for sheep in alist:
        if sheep:
            count += 1
    return count

print(count_sheep(mysheep))