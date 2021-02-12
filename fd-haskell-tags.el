(require 'haskell-cabal)

(defun haskell-cabal--find-tags-dir-ad (fn &rest r)
  (flet ((get-dir (x) (expand-file-name (locate-dominating-file default-directory x))))
    (or
     (get-dir "tags")
     (get-dir "TAGS")
     (get-dir "stack.yaml")
     (apply fn r))))

(advice-add 'haskell-cabal--find-tags-dir :around #'haskell-cabal--find-tags-dir-ad)
(provide 'fd-haskell-tags)
