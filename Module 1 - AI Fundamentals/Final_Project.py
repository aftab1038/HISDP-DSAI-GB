## Code by AFTAB NAFEES
## GitHub : aftab1038

import math 


def main():
    # definning the arrays 
    array1 = [[1,2,3],[4,5,6],[7,8,9]]
    array2 = [[1,14,4],[3,6,4],[2,1,3]]

    # get the PointSets by calling ClosetPointSet function 
    list_pointSet = closetPointSet(array1, array2)

    # Formatting output
    print()
    print(f"Array 1 (A1) = {array1}")
    print(f"Array 2 (A2) = {array2}")
    print()
    print("Pairs of data points which are closest: A1 points ; A2 points")
    print("-----------------------------------------------------------------------")
    # printing the each point set in pointsets list
    for pointSet in list_pointSet:
        print(f"Pairs of data points which are closest: {pointSet[0]} ; {pointSet[1]}")
    print()


# calculating distance and finding the pair of point with minimum distance 
def closetPointSet(array1, array2):
    # empty list of length of length of array 1
    # store each pointset 
    list_pointSet= [[] for _ in range(len(array1))]

    # calculating distance and comparing each point of array 1 with all the points of array2 
    # Saving the pointSet in the list of pointSets, pointset contain each of point of both array which are nearest
    i=0
    while i < len(array1):
        # initally minimun distance is infinte
        minDistance  = float('inf')
        for point in array2:
            distance = math.sqrt((array1[i][0]-point[0])**2 +(array1[i][1]-point[1])**2 + (array1[i][2]-point[2])**2 )
            if distance<minDistance:
                minDistance = distance
                list_pointSet[i]= ([array1[i], point])
        i+=1

    # returning list of pointset
    return list_pointSet
    

main()