--import qualified Data.ByteString.Char8
import IO

main :: IO ()
main = do tests <- getLine
          contents <- getContents
          mapM_ (putStrLn . show . fctrltest . read) $ take (read tests) (lines contents)
fctrltest n = ff 0 n
ff r n     | n<5 = r
           | otherwise = ff (r+n') n'
		where n' = div n 5
