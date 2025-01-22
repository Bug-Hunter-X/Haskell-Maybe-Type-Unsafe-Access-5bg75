The solution uses safe pattern matching to handle the `Maybe` type correctly. The code explicitly checks if the value is `Just` or `Nothing`, preventing the runtime exception.

```haskell
processMaybe :: Maybe Int -> Int
processMaybe (Just x) = x + 10
processMaybe Nothing = 0  -- Handle Nothing case

main :: IO ()
main = do
  let result1 = processMaybe (Just 5)
  let result2 = processMaybe Nothing
  print result1  -- Output: 15
  print result2  -- Output: 0
```

Alternatively, the `maybe` function can be used for a more concise solution:

```haskell
processMaybe :: Maybe Int -> Int
processMaybe x = maybe 0 (+10) x

main :: IO ()
main = do
  let result1 = processMaybe (Just 5)
  let result2 = processMaybe Nothing
  print result1  -- Output: 15
  print result2  -- Output: 0
```