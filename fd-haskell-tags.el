(require 'haskell-cabal)

(defun haskell-cabal--find-tags-dir-ad (fn &rest r)
  (or
   (locate-dominating-file default-directory "tags")
   (locate-dominating-file default-directory "TAGS")
   (locate-dominating-file default-directory "stack.yaml")
   (apply fn r)))

(advice-add 'haskell-cabal--find-tags-dir :around #'haskell-cabal--find-tags-dir-ad)
(provide 'fd-haskell-tags)
