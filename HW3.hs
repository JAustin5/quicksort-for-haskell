quickS :: Ord i => [i] -> [i]
quickS [] = []
quickS (x : xs) = 
    let klein = quickS [i | i <- xs, i <= x]
        bigger = quickS [i | i <- xs, i > x]
    in klein ++ [x] ++ bigger

