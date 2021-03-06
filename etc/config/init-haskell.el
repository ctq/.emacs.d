(use-package haskell-mode
  :ensure t
  :hook ((haskell-mode . haskell-indentation-mode)
         (haskell-mode . haskell-doc-mode))
  :custom
  (haskell-completing-read-function 'completing-read)
  (haskell-process-check-cabal-config-on-load nil)
  (haskell-process-suggest-add-package nil)
  (haskell-process-suggest-hoogle-imports nil)
  (haskell-process-suggest-language-programs nil)
  (haskell-process-suggest-overloaded-strings nil)
  (haskell-process-suggest-restart nil))

(use-package dante
  :ensure t
  :hook (haskell-mode . dante-mode)
  :bind (:map haskell-mode-map
              ("C-c d" . dante-info)
              ("C-c C-c" . dante-eval-block)))

(provide 'init-haskell)
