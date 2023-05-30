var firstSide = [2282, 1329, 541, 216, 529, 917,  243, 722, 1195, 778,   384, 1202, 927, 1670, 126, 192, 1506,  1025, 601, 2692]
var secondSide = [979, 322, 681, 318, 804, 379, 149, 2075, 659, 2710,   174, 541,  792, 853, 136, 484, 516, 2118, 1143, 1383]
var thirdSide = [1604, 595, 368, 668, 367, 212, 118, 1119, 1917, 1497, 311,  348, 637, 1459, 129, 228, 891, 540, 1764, 917]
for i in 0..<firstSide.count {
  if (firstSide[i] + secondSide[i]) > thirdSide[i] && (firstSide[i] + thirdSide[i]) > secondSide[i] && (secondSide[i] + thirdSide[i]) > firstSide[i] {
    print (1)
  }else {
    print(0)
  }
}
